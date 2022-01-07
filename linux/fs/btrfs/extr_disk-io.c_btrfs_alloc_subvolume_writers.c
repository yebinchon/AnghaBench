
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_subvolume_writers {int wait; int counter; } ;


 int ENOMEM ;
 struct btrfs_subvolume_writers* ERR_PTR (int) ;
 int GFP_NOFS ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btrfs_subvolume_writers*) ;
 struct btrfs_subvolume_writers* kmalloc (int,int ) ;
 int percpu_counter_init (int *,int ,int ) ;

__attribute__((used)) static struct btrfs_subvolume_writers *btrfs_alloc_subvolume_writers(void)
{
 struct btrfs_subvolume_writers *writers;
 int ret;

 writers = kmalloc(sizeof(*writers), GFP_NOFS);
 if (!writers)
  return ERR_PTR(-ENOMEM);

 ret = percpu_counter_init(&writers->counter, 0, GFP_NOFS);
 if (ret < 0) {
  kfree(writers);
  return ERR_PTR(ret);
 }

 init_waitqueue_head(&writers->wait);
 return writers;
}
