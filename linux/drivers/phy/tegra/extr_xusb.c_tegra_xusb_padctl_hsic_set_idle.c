
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_padctl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* hsic_set_idle ) (struct tegra_xusb_padctl*,unsigned int,int) ;} ;


 int ENOSYS ;
 int stub1 (struct tegra_xusb_padctl*,unsigned int,int) ;

int tegra_xusb_padctl_hsic_set_idle(struct tegra_xusb_padctl *padctl,
        unsigned int port, bool idle)
{
 if (padctl->soc->ops->hsic_set_idle)
  return padctl->soc->ops->hsic_set_idle(padctl, port, idle);

 return -ENOSYS;
}
