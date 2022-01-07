
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_geometry {int start; } ;
struct dasd_device {TYPE_2__* block; TYPE_1__* discipline; } ;
struct block_device {int bd_disk; } ;
struct TYPE_4__ {int s2b_shift; } ;
struct TYPE_3__ {int (* fill_geometry ) (TYPE_2__*,struct hd_geometry*) ;} ;


 int EINVAL ;
 int ENODEV ;
 struct dasd_device* dasd_device_from_gendisk (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int get_start_sect (struct block_device*) ;
 int stub1 (TYPE_2__*,struct hd_geometry*) ;

__attribute__((used)) static int dasd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct dasd_device *base;

 base = dasd_device_from_gendisk(bdev->bd_disk);
 if (!base)
  return -ENODEV;

 if (!base->discipline ||
     !base->discipline->fill_geometry) {
  dasd_put_device(base);
  return -EINVAL;
 }
 base->discipline->fill_geometry(base->block, geo);
 geo->start = get_start_sect(bdev) >> base->block->s2b_shift;
 dasd_put_device(base);
 return 0;
}
