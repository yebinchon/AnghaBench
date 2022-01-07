
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scrub_page {int logical; TYPE_3__* recover; TYPE_2__* sblock; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_8__ {int bi_sector; } ;
struct bio {int bi_status; int bi_end_io; int * bi_private; TYPE_4__ bi_iter; } ;
struct TYPE_7__ {int map_length; int bbio; } ;
struct TYPE_6__ {TYPE_1__** pagev; } ;
struct TYPE_5__ {int mirror_num; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int blk_status_to_errno (int ) ;
 int done ;
 int raid56_parity_recover (struct btrfs_fs_info*,struct bio*,int ,int ,int,int ) ;
 int scrub_bio_wait_endio ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static int scrub_submit_raid56_bio_wait(struct btrfs_fs_info *fs_info,
     struct bio *bio,
     struct scrub_page *page)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int ret;
 int mirror_num;

 bio->bi_iter.bi_sector = page->logical >> 9;
 bio->bi_private = &done;
 bio->bi_end_io = scrub_bio_wait_endio;

 mirror_num = page->sblock->pagev[0]->mirror_num;
 ret = raid56_parity_recover(fs_info, bio, page->recover->bbio,
        page->recover->map_length,
        mirror_num, 0);
 if (ret)
  return ret;

 wait_for_completion_io(&done);
 return blk_status_to_errno(bio->bi_status);
}
