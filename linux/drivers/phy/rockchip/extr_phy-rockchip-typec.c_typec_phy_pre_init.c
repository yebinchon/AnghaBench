
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb3phy_port_cfg {int usb3tousb2_en; int external_psm; } ;
struct rockchip_typec_phy {int mode; int pipe_rst; int uphy_rst; int tcphy_rst; struct rockchip_usb3phy_port_cfg* port_cfgs; } ;


 int MODE_DISCONNECT ;
 int property_enable (struct rockchip_typec_phy*,int *,int) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void typec_phy_pre_init(struct rockchip_typec_phy *tcphy)
{
 const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;

 reset_control_assert(tcphy->tcphy_rst);
 reset_control_assert(tcphy->uphy_rst);
 reset_control_assert(tcphy->pipe_rst);


 property_enable(tcphy, &cfg->external_psm, 1);
 property_enable(tcphy, &cfg->usb3tousb2_en, 0);

 tcphy->mode = MODE_DISCONNECT;
}
