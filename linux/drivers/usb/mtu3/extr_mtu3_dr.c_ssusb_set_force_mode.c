
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssusb_mtk {int ippc_base; } ;
typedef enum mtu3_dr_force_mode { ____Placeholder_mtu3_dr_force_mode } mtu3_dr_force_mode ;





 int SSUSB_U2_CTRL (int ) ;
 int SSUSB_U2_PORT_FORCE_IDDIG ;
 int SSUSB_U2_PORT_RG_IDDIG ;
 int mtu3_readl (int ,int ) ;
 int mtu3_writel (int ,int ,int) ;

void ssusb_set_force_mode(struct ssusb_mtk *ssusb,
     enum mtu3_dr_force_mode mode)
{
 u32 value;

 value = mtu3_readl(ssusb->ippc_base, SSUSB_U2_CTRL(0));
 switch (mode) {
 case 130:
  value |= SSUSB_U2_PORT_FORCE_IDDIG | SSUSB_U2_PORT_RG_IDDIG;
  break;
 case 129:
  value |= SSUSB_U2_PORT_FORCE_IDDIG;
  value &= ~SSUSB_U2_PORT_RG_IDDIG;
  break;
 case 128:
  value &= ~(SSUSB_U2_PORT_FORCE_IDDIG | SSUSB_U2_PORT_RG_IDDIG);
  break;
 default:
  return;
 }
 mtu3_writel(ssusb->ippc_base, SSUSB_U2_CTRL(0), value);
}
