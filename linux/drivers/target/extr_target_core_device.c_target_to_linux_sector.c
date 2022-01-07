
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef int sector_t ;



sector_t target_to_linux_sector(struct se_device *dev, sector_t lb)
{
 switch (dev->dev_attrib.block_size) {
 case 4096:
  return lb << 3;
 case 2048:
  return lb << 2;
 case 1024:
  return lb << 1;
 default:
  return lb;
 }
}
