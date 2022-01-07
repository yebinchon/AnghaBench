
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct iblock_dev {int ibd_bio_set; int * ibd_bd; } ;


 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int bioset_exit (int *) ;
 int blkdev_put (int *,int) ;

__attribute__((used)) static void iblock_destroy_device(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);

 if (ib_dev->ibd_bd != ((void*)0))
  blkdev_put(ib_dev->ibd_bd, FMODE_WRITE|FMODE_READ|FMODE_EXCL);
 bioset_exit(&ib_dev->ibd_bio_set);
}
