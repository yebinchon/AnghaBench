
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_addr_list {scalar_t__ preferred; } ;
struct afs_addr_cursor {scalar_t__ index; int error; struct afs_addr_list* alist; int tried; scalar_t__ responded; } ;


 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int afs_put_addrlist (struct afs_addr_list*) ;
 scalar_t__ test_bit (scalar_t__,int *) ;

int afs_end_cursor(struct afs_addr_cursor *ac)
{
 struct afs_addr_list *alist;

 alist = ac->alist;
 if (alist) {
  if (ac->responded &&
      ac->index != alist->preferred &&
      test_bit(ac->alist->preferred, &ac->tried))
   WRITE_ONCE(alist->preferred, ac->index);
  afs_put_addrlist(alist);
  ac->alist = ((void*)0);
 }

 return ac->error;
}
