
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_addr_list {int usage; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct afs_addr_list *afs_get_addrlist(struct afs_addr_list *alist)
{
 if (alist)
  refcount_inc(&alist->usage);
 return alist;
}
