
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm63xx_udc {TYPE_1__* pd; } ;
struct TYPE_2__ {int port_no; } ;


 scalar_t__ BCMCPU_IS_6328 () ;
 int BIT (int ) ;
 int GPIO_PINMUX_OTHR_6328_USB_DEV ;
 int GPIO_PINMUX_OTHR_6328_USB_HOST ;
 int GPIO_PINMUX_OTHR_6328_USB_MASK ;
 int GPIO_PINMUX_OTHR_REG ;
 int RSET_USBH_PRIV ;
 int USBH_PRIV_SWAP_6368_REG ;
 int USBH_PRIV_SWAP_USBD_MASK ;
 int USBH_PRIV_UTMI_CTL_6368_REG ;
 int USBH_PRIV_UTMI_CTL_HOSTB_SHIFT ;
 int USBH_PRIV_UTMI_CTL_NODRIV_SHIFT ;
 int bcm_gpio_readl (int ) ;
 int bcm_gpio_writel (int,int ) ;
 int bcm_rset_readl (int ,int ) ;
 int bcm_rset_writel (int ,int,int ) ;

__attribute__((used)) static void bcm63xx_select_phy_mode(struct bcm63xx_udc *udc, bool is_device)
{
 u32 val, portmask = BIT(udc->pd->port_no);

 if (BCMCPU_IS_6328()) {

  val = bcm_gpio_readl(GPIO_PINMUX_OTHR_REG);
  val &= ~GPIO_PINMUX_OTHR_6328_USB_MASK;
  val |= is_device ? GPIO_PINMUX_OTHR_6328_USB_DEV :
          GPIO_PINMUX_OTHR_6328_USB_HOST;
  bcm_gpio_writel(val, GPIO_PINMUX_OTHR_REG);
 }

 val = bcm_rset_readl(RSET_USBH_PRIV, USBH_PRIV_UTMI_CTL_6368_REG);
 if (is_device) {
  val |= (portmask << USBH_PRIV_UTMI_CTL_HOSTB_SHIFT);
  val |= (portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
 } else {
  val &= ~(portmask << USBH_PRIV_UTMI_CTL_HOSTB_SHIFT);
  val &= ~(portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
 }
 bcm_rset_writel(RSET_USBH_PRIV, val, USBH_PRIV_UTMI_CTL_6368_REG);

 val = bcm_rset_readl(RSET_USBH_PRIV, USBH_PRIV_SWAP_6368_REG);
 if (is_device)
  val |= USBH_PRIV_SWAP_USBD_MASK;
 else
  val &= ~USBH_PRIV_SWAP_USBD_MASK;
 bcm_rset_writel(RSET_USBH_PRIV, val, USBH_PRIV_SWAP_6368_REG);
}
