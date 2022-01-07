
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct btrfs_delalloc_work {int work; struct inode* inode; int list; int completion; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int btrfs_flush_delalloc_helper ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_run_delalloc_work ;
 int init_completion (int *) ;
 struct btrfs_delalloc_work* kmalloc (int,int ) ;

__attribute__((used)) static struct btrfs_delalloc_work *btrfs_alloc_delalloc_work(struct inode *inode)
{
 struct btrfs_delalloc_work *work;

 work = kmalloc(sizeof(*work), GFP_NOFS);
 if (!work)
  return ((void*)0);

 init_completion(&work->completion);
 INIT_LIST_HEAD(&work->list);
 work->inode = inode;
 btrfs_init_work(&work->work, btrfs_flush_delalloc_helper,
   btrfs_run_delalloc_work, ((void*)0), ((void*)0));

 return work;
}
