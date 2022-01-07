
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct se_cmd {int se_dev; } ;
struct iblock_dev {int ibd_bd; int ibd_bio_set; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; int * bi_end_io; struct se_cmd* bi_private; } ;
typedef int sector_t ;


 scalar_t__ BIO_MAX_PAGES ;
 int GFP_NOIO ;
 struct iblock_dev* IBLOCK_DEV (int ) ;
 struct bio* bio_alloc_bioset (int ,scalar_t__,int *) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 int iblock_bio_done ;
 int pr_err (char*) ;

__attribute__((used)) static struct bio *
iblock_get_bio(struct se_cmd *cmd, sector_t lba, u32 sg_num, int op,
        int op_flags)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(cmd->se_dev);
 struct bio *bio;





 if (sg_num > BIO_MAX_PAGES)
  sg_num = BIO_MAX_PAGES;

 bio = bio_alloc_bioset(GFP_NOIO, sg_num, &ib_dev->ibd_bio_set);
 if (!bio) {
  pr_err("Unable to allocate memory for bio\n");
  return ((void*)0);
 }

 bio_set_dev(bio, ib_dev->ibd_bd);
 bio->bi_private = cmd;
 bio->bi_end_io = &iblock_bio_done;
 bio->bi_iter.bi_sector = lba;
 bio_set_op_attrs(bio, op, op_flags);

 return bio;
}
