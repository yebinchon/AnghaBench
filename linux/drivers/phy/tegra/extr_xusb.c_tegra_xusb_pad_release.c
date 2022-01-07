
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_pad {TYPE_2__* soc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* remove ) (struct tegra_xusb_pad*) ;} ;


 int stub1 (struct tegra_xusb_pad*) ;
 struct tegra_xusb_pad* to_tegra_xusb_pad (struct device*) ;

__attribute__((used)) static void tegra_xusb_pad_release(struct device *dev)
{
 struct tegra_xusb_pad *pad = to_tegra_xusb_pad(dev);

 pad->soc->ops->remove(pad);
}
