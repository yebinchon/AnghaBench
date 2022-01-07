
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb3phy_port_cfg {int usb3_host_port; int usb3_host_disable; int usb3tousb2_en; } ;
struct rockchip_typec_phy {struct rockchip_usb3phy_port_cfg* port_cfgs; } ;


 int property_enable (struct rockchip_typec_phy*,int *,int) ;

__attribute__((used)) static int tcphy_cfg_usb3_to_usb2_only(struct rockchip_typec_phy *tcphy,
           bool value)
{
 const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;

 property_enable(tcphy, &cfg->usb3tousb2_en, value);
 property_enable(tcphy, &cfg->usb3_host_disable, value);
 property_enable(tcphy, &cfg->usb3_host_port, !value);

 return 0;
}
