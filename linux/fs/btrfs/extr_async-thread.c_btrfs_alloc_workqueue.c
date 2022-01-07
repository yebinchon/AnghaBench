
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workqueue {void* normal; void* high; } ;
struct btrfs_fs_info {int dummy; } ;


 int GFP_KERNEL ;
 unsigned int WQ_HIGHPRI ;
 void* __btrfs_alloc_workqueue (struct btrfs_fs_info*,char const*,unsigned int,int,int) ;
 int __btrfs_destroy_workqueue (void*) ;
 int kfree (struct btrfs_workqueue*) ;
 struct btrfs_workqueue* kzalloc (int,int ) ;

struct btrfs_workqueue *btrfs_alloc_workqueue(struct btrfs_fs_info *fs_info,
           const char *name,
           unsigned int flags,
           int limit_active,
           int thresh)
{
 struct btrfs_workqueue *ret = kzalloc(sizeof(*ret), GFP_KERNEL);

 if (!ret)
  return ((void*)0);

 ret->normal = __btrfs_alloc_workqueue(fs_info, name,
           flags & ~WQ_HIGHPRI,
           limit_active, thresh);
 if (!ret->normal) {
  kfree(ret);
  return ((void*)0);
 }

 if (flags & WQ_HIGHPRI) {
  ret->high = __btrfs_alloc_workqueue(fs_info, name, flags,
          limit_active, thresh);
  if (!ret->high) {
   __btrfs_destroy_workqueue(ret->normal);
   kfree(ret);
   return ((void*)0);
  }
 }
 return ret;
}
