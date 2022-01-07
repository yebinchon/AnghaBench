
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm63xx_udc {TYPE_1__* pd; } ;
struct TYPE_2__ {int port_no; } ;


 int BIT (int ) ;
 int RSET_USBH_PRIV ;
 int USBH_PRIV_UTMI_CTL_6368_REG ;
 int USBH_PRIV_UTMI_CTL_NODRIV_SHIFT ;
 int bcm_rset_readl (int ,int ) ;
 int bcm_rset_writel (int ,int,int ) ;

__attribute__((used)) static void bcm63xx_select_pullup(struct bcm63xx_udc *udc, bool is_on)
{
 u32 val, portmask = BIT(udc->pd->port_no);

 val = bcm_rset_readl(RSET_USBH_PRIV, USBH_PRIV_UTMI_CTL_6368_REG);
 if (is_on)
  val &= ~(portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
 else
  val |= (portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
 bcm_rset_writel(RSET_USBH_PRIV, val, USBH_PRIV_UTMI_CTL_6368_REG);
}
