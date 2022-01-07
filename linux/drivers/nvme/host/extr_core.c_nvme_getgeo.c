
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {int bd_disk; } ;


 int get_capacity (int ) ;

__attribute__((used)) static int nvme_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{

 geo->heads = 1 << 6;
 geo->sectors = 1 << 5;
 geo->cylinders = get_capacity(bdev->bd_disk) >> 11;
 return 0;
}
