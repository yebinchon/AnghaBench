
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;


 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 unsigned int bdev_io_opt (struct block_device*) ;

__attribute__((used)) static unsigned int iblock_get_io_opt(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 struct block_device *bd = ib_dev->ibd_bd;

 return bdev_io_opt(bd);
}
