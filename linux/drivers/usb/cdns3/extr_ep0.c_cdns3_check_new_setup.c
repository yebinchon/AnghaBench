
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int ep_sts; } ;


 int EP_STS_SETUP ;
 int EP_STS_STPWAIT ;
 int USB_DIR_OUT ;
 int cdns3_select_ep (struct cdns3_device*,int) ;
 int readl (int *) ;

__attribute__((used)) static bool cdns3_check_new_setup(struct cdns3_device *priv_dev)
{
 u32 ep_sts_reg;

 cdns3_select_ep(priv_dev, 0 | USB_DIR_OUT);
 ep_sts_reg = readl(&priv_dev->regs->ep_sts);

 return !!(ep_sts_reg & (EP_STS_SETUP | EP_STS_STPWAIT));
}
