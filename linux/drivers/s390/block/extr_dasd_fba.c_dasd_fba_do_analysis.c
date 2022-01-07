
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blk_size; int blk_bdsa; } ;
struct dasd_fba_private {TYPE_1__ rdc_data; } ;
struct dasd_block {int bp_block; scalar_t__ s2b_shift; int blocks; TYPE_2__* base; } ;
struct TYPE_4__ {struct dasd_fba_private* private; } ;


 int DBF_DEV_EVENT (int ,TYPE_2__*,char*,int) ;
 int DBF_WARNING ;
 int dasd_check_blocksize (int) ;

__attribute__((used)) static int dasd_fba_do_analysis(struct dasd_block *block)
{
 struct dasd_fba_private *private = block->base->private;
 int sb, rc;

 rc = dasd_check_blocksize(private->rdc_data.blk_size);
 if (rc) {
  DBF_DEV_EVENT(DBF_WARNING, block->base, "unknown blocksize %d",
       private->rdc_data.blk_size);
  return rc;
 }
 block->blocks = private->rdc_data.blk_bdsa;
 block->bp_block = private->rdc_data.blk_size;
 block->s2b_shift = 0;
 for (sb = 512; sb < private->rdc_data.blk_size; sb = sb << 1)
  block->s2b_shift++;
 return 0;
}
