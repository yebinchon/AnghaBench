
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int* t_task_cdb; int se_dev; } ;
struct iblock_dev {int ibd_bd; } ;
struct bio {int bi_opf; struct se_cmd* bi_private; int bi_end_io; } ;
typedef int sense_reason_t ;


 int GFP_KERNEL ;
 struct iblock_dev* IBLOCK_DEV (int ) ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int SAM_STAT_GOOD ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_set_dev (struct bio*,int ) ;
 int iblock_end_io_flush ;
 int submit_bio (struct bio*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_sync_cache(struct se_cmd *cmd)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(cmd->se_dev);
 int immed = (cmd->t_task_cdb[1] & 0x2);
 struct bio *bio;





 if (immed)
  target_complete_cmd(cmd, SAM_STAT_GOOD);

 bio = bio_alloc(GFP_KERNEL, 0);
 bio->bi_end_io = iblock_end_io_flush;
 bio_set_dev(bio, ib_dev->ibd_bd);
 bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
 if (!immed)
  bio->bi_private = cmd;
 submit_bio(bio);
 return 0;
}
