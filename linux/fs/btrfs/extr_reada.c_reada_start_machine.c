
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reada_machine_work {int work; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int reada_works_cnt; int readahead_workers; } ;


 int BUG () ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 int btrfs_readahead_helper ;
 struct reada_machine_work* kzalloc (int,int ) ;
 int reada_start_machine_worker ;

__attribute__((used)) static void reada_start_machine(struct btrfs_fs_info *fs_info)
{
 struct reada_machine_work *rmw;

 rmw = kzalloc(sizeof(*rmw), GFP_KERNEL);
 if (!rmw) {

  BUG();
 }
 btrfs_init_work(&rmw->work, btrfs_readahead_helper,
   reada_start_machine_worker, ((void*)0), ((void*)0));
 rmw->fs_info = fs_info;

 btrfs_queue_work(fs_info->readahead_workers, &rmw->work);
 atomic_inc(&fs_info->reada_works_cnt);
}
