
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver {size_t name_len; unsigned short port; int name; int probe_lock; int probe_wq; int lock; int usage; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct afs_vlserver* kzalloc (int ,int ) ;
 int memcpy (int ,char const*,size_t) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 int struct_size (struct afs_vlserver*,char const*,size_t) ;

struct afs_vlserver *afs_alloc_vlserver(const char *name, size_t name_len,
     unsigned short port)
{
 struct afs_vlserver *vlserver;

 vlserver = kzalloc(struct_size(vlserver, name, name_len + 1),
      GFP_KERNEL);
 if (vlserver) {
  atomic_set(&vlserver->usage, 1);
  rwlock_init(&vlserver->lock);
  init_waitqueue_head(&vlserver->probe_wq);
  spin_lock_init(&vlserver->probe_lock);
  vlserver->name_len = name_len;
  vlserver->port = port;
  memcpy(vlserver->name, name, name_len);
 }
 return vlserver;
}
