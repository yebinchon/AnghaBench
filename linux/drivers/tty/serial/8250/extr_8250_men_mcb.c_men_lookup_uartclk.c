
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mcb_device {int dev; TYPE_1__* bus; } ;
struct TYPE_2__ {int name; } ;


 int dev_info (int *,char*,...) ;
 int dev_name (int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static u32 men_lookup_uartclk(struct mcb_device *mdev)
{

 u32 clkval = 1041666;

 dev_info(&mdev->dev, "%s on board %s\n",
  dev_name(&mdev->dev),
  mdev->bus->name);
 if (strncmp(mdev->bus->name, "F075", 4) == 0)
  clkval = 1041666;
 else if (strncmp(mdev->bus->name, "F216", 4) == 0)
  clkval = 1843200;
 else if (strncmp(mdev->bus->name, "G215", 4) == 0)
  clkval = 1843200;
 else if (strncmp(mdev->bus->name, "F210", 4) == 0)
  clkval = 115200;
 else
  dev_info(&mdev->dev,
    "board not detected, using default uartclk\n");

 clkval = clkval << 4;

 return clkval;
}
