
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct myrb_hba {int ldev_geom_heads; int ldev_geom_sectors; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int ,int) ;
 struct myrb_hba* shost_priv (int ) ;

__attribute__((used)) static int myrb_biosparam(struct scsi_device *sdev, struct block_device *bdev,
  sector_t capacity, int geom[])
{
 struct myrb_hba *cb = shost_priv(sdev->host);

 geom[0] = cb->ldev_geom_heads;
 geom[1] = cb->ldev_geom_sectors;
 geom[2] = sector_div(capacity, geom[0] * geom[1]);

 return 0;
}
