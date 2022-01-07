
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int cylinders; int heads; int sectors; } ;
struct dasd_block {int blocks; int s2b_shift; int bp_block; } ;


 int EINVAL ;
 scalar_t__ dasd_check_blocksize (int ) ;

__attribute__((used)) static int
dasd_diag_fill_geometry(struct dasd_block *block, struct hd_geometry *geo)
{
 if (dasd_check_blocksize(block->bp_block) != 0)
  return -EINVAL;
 geo->cylinders = (block->blocks << block->s2b_shift) >> 10;
 geo->heads = 16;
 geo->sectors = 128 >> block->s2b_shift;
 return 0;
}
