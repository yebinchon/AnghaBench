
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int bdev_alignment_offset (struct block_device*) ;
 int bdev_logical_block_size (struct block_device*) ;

__attribute__((used)) static sector_t iblock_get_alignment_offset_lbas(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 struct block_device *bd = ib_dev->ibd_bd;
 int ret;

 ret = bdev_alignment_offset(bd);
 if (ret == -1)
  return 0;


 return ret / bdev_logical_block_size(bd);
}
