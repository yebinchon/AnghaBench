
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver_list {int lock; int usage; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 struct afs_vlserver_list* kzalloc (int ,int ) ;
 int rwlock_init (int *) ;
 int servers ;
 int struct_size (struct afs_vlserver_list*,int ,unsigned int) ;

struct afs_vlserver_list *afs_alloc_vlserver_list(unsigned int nr_servers)
{
 struct afs_vlserver_list *vllist;

 vllist = kzalloc(struct_size(vllist, servers, nr_servers), GFP_KERNEL);
 if (vllist) {
  atomic_set(&vllist->usage, 1);
  rwlock_init(&vllist->lock);
 }

 return vllist;
}
