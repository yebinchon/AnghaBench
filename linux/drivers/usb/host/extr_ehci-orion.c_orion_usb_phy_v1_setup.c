
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int USB_CAUSE ;
 int USB_CMD ;
 int USB_CMD_RESET ;
 int USB_CMD_RUN ;
 int USB_IPG ;
 int USB_MASK ;
 int USB_MODE ;
 int USB_MODE_HOST ;
 int USB_MODE_SDIS ;
 int USB_PHY_IVREF_CTRL ;
 int USB_PHY_PWR_CTRL ;
 int USB_PHY_RX_CTRL ;
 int USB_PHY_TST_GRP_CTRL ;
 int USB_PHY_TX_CTRL ;
 int rdl (int ) ;
 int wrl (int ,int) ;

__attribute__((used)) static void orion_usb_phy_v1_setup(struct usb_hcd *hcd)
{




 wrl(USB_CAUSE, 0);
 wrl(USB_MASK, 0);




 wrl(USB_CMD, rdl(USB_CMD) | USB_CMD_RESET);
 while (rdl(USB_CMD) & USB_CMD_RESET);





 wrl(USB_IPG, (rdl(USB_IPG) & ~0x7f00) | 0xc00);





 wrl(USB_PHY_PWR_CTRL, (rdl(USB_PHY_PWR_CTRL) & ~0xc0)| 0x40);





 wrl(USB_PHY_TX_CTRL, (rdl(USB_PHY_TX_CTRL) & ~0x78) | 0x202040);






 wrl(USB_PHY_RX_CTRL, (rdl(USB_PHY_RX_CTRL) & ~0xc2003f0) | 0xc0000010);





 wrl(USB_PHY_IVREF_CTRL, (rdl(USB_PHY_IVREF_CTRL) & ~0x80003 ) | 0x32);





 wrl(USB_PHY_TST_GRP_CTRL, rdl(USB_PHY_TST_GRP_CTRL) & ~0x8000);




 wrl(USB_CMD, rdl(USB_CMD) & ~USB_CMD_RUN);
 wrl(USB_CMD, rdl(USB_CMD) | USB_CMD_RESET);
 while (rdl(USB_CMD) & USB_CMD_RESET);






 wrl(USB_MODE, USB_MODE_SDIS | USB_MODE_HOST);
}
