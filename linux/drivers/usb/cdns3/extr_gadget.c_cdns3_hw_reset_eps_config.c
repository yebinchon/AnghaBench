
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_device {scalar_t__ wait_for_setup; scalar_t__ out_mem_is_allocated; scalar_t__ onchip_used_size; scalar_t__ hw_configured_flag; TYPE_1__* regs; } ;
struct TYPE_2__ {int usb_conf; } ;


 int USB_CONF_CFGRST ;
 int cdns3_allow_enable_l1 (struct cdns3_device*,int ) ;
 int writel (int ,int *) ;

void cdns3_hw_reset_eps_config(struct cdns3_device *priv_dev)
{
 writel(USB_CONF_CFGRST, &priv_dev->regs->usb_conf);

 cdns3_allow_enable_l1(priv_dev, 0);
 priv_dev->hw_configured_flag = 0;
 priv_dev->onchip_used_size = 0;
 priv_dev->out_mem_is_allocated = 0;
 priv_dev->wait_for_setup = 0;
}
