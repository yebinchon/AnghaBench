
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ramaddr; } ;
struct TYPE_4__ {int features; } ;
struct sym_device {TYPE_3__* pdev; TYPE_2__ s; TYPE_1__ chip; } ;
struct TYPE_6__ {int dev; } ;


 int ENODEV ;
 int FE_RAM8K ;
 int dev_info (int *,char*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int sym_check_raid(struct sym_device *device)
{
 unsigned int ram_size, ram_val;

 if (!device->s.ramaddr)
  return 0;

 if (device->chip.features & FE_RAM8K)
  ram_size = 8192;
 else
  ram_size = 4096;

 ram_val = readl(device->s.ramaddr + ram_size - 16);
 if (ram_val != 0x52414944)
  return 0;

 dev_info(&device->pdev->dev,
   "not initializing, driven by RAID controller.\n");
 return -ENODEV;
}
