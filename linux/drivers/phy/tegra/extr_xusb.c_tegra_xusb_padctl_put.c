
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int dev; } ;


 int put_device (int ) ;

void tegra_xusb_padctl_put(struct tegra_xusb_padctl *padctl)
{
 if (padctl)
  put_device(padctl->dev);
}
