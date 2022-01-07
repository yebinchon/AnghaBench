
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {int t_data_nents; struct iblock_req* priv; struct se_device* se_dev; struct scatterlist* t_data_sg; scalar_t__ prot_op; int t_task_lba; } ;
struct scatterlist {int length; int offset; } ;
struct iblock_req {int pending; } ;
struct block_device {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef int sense_reason_t ;
typedef int sector_t ;
struct TYPE_4__ {struct block_device* ibd_bd; } ;


 int GFP_KERNEL ;
 TYPE_2__* IBLOCK_DEV (struct se_device*) ;
 int REQ_OP_WRITE ;
 int SECTOR_SHIFT ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 scalar_t__ bdev_write_zeroes_sectors (struct block_device*) ;
 int bio_add_page (struct bio*,int ,int,int ) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int bio_put (struct bio*) ;
 int iblock_execute_zero_out (struct block_device*,struct se_cmd*) ;
 struct bio* iblock_get_bio (struct se_cmd*,int,int,int ,int ) ;
 int iblock_submit_bios (struct bio_list*) ;
 int kfree (struct iblock_req*) ;
 struct iblock_req* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;
 int sbc_get_write_same_sectors (struct se_cmd*) ;
 int sg_page (struct scatterlist*) ;
 int target_to_linux_sector (struct se_device*,int ) ;

__attribute__((used)) static sense_reason_t
iblock_execute_write_same(struct se_cmd *cmd)
{
 struct block_device *bdev = IBLOCK_DEV(cmd->se_dev)->ibd_bd;
 struct iblock_req *ibr;
 struct scatterlist *sg;
 struct bio *bio;
 struct bio_list list;
 struct se_device *dev = cmd->se_dev;
 sector_t block_lba = target_to_linux_sector(dev, cmd->t_task_lba);
 sector_t sectors = target_to_linux_sector(dev,
     sbc_get_write_same_sectors(cmd));

 if (cmd->prot_op) {
  pr_err("WRITE_SAME: Protection information with IBLOCK"
         " backends not supported\n");
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }
 sg = &cmd->t_data_sg[0];

 if (cmd->t_data_nents > 1 ||
     sg->length != cmd->se_dev->dev_attrib.block_size) {
  pr_err("WRITE_SAME: Illegal SGL t_data_nents: %u length: %u"
   " block_size: %u\n", cmd->t_data_nents, sg->length,
   cmd->se_dev->dev_attrib.block_size);
  return TCM_INVALID_CDB_FIELD;
 }

 if (bdev_write_zeroes_sectors(bdev)) {
  if (!iblock_execute_zero_out(bdev, cmd))
   return 0;
 }

 ibr = kzalloc(sizeof(struct iblock_req), GFP_KERNEL);
 if (!ibr)
  goto fail;
 cmd->priv = ibr;

 bio = iblock_get_bio(cmd, block_lba, 1, REQ_OP_WRITE, 0);
 if (!bio)
  goto fail_free_ibr;

 bio_list_init(&list);
 bio_list_add(&list, bio);

 refcount_set(&ibr->pending, 1);

 while (sectors) {
  while (bio_add_page(bio, sg_page(sg), sg->length, sg->offset)
    != sg->length) {

   bio = iblock_get_bio(cmd, block_lba, 1, REQ_OP_WRITE,
          0);
   if (!bio)
    goto fail_put_bios;

   refcount_inc(&ibr->pending);
   bio_list_add(&list, bio);
  }


  block_lba += sg->length >> SECTOR_SHIFT;
  sectors -= sg->length >> SECTOR_SHIFT;
 }

 iblock_submit_bios(&list);
 return 0;

fail_put_bios:
 while ((bio = bio_list_pop(&list)))
  bio_put(bio);
fail_free_ibr:
 kfree(ibr);
fail:
 return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
}
