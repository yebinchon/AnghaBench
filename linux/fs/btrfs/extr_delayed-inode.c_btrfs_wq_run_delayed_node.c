
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int delayed_workers; } ;
struct btrfs_delayed_root {int dummy; } ;
struct btrfs_async_delayed_work {int nr; int work; struct btrfs_delayed_root* delayed_root; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int btrfs_async_run_delayed_root ;
 int btrfs_delayed_meta_helper ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 struct btrfs_async_delayed_work* kmalloc (int,int ) ;

__attribute__((used)) static int btrfs_wq_run_delayed_node(struct btrfs_delayed_root *delayed_root,
         struct btrfs_fs_info *fs_info, int nr)
{
 struct btrfs_async_delayed_work *async_work;

 async_work = kmalloc(sizeof(*async_work), GFP_NOFS);
 if (!async_work)
  return -ENOMEM;

 async_work->delayed_root = delayed_root;
 btrfs_init_work(&async_work->work, btrfs_delayed_meta_helper,
   btrfs_async_run_delayed_root, ((void*)0), ((void*)0));
 async_work->nr = nr;

 btrfs_queue_work(fs_info->delayed_workers, &async_work->work);
 return 0;
}
