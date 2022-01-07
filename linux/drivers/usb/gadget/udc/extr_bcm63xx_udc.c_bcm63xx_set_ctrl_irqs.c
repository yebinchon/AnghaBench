
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm63xx_udc {int dummy; } ;


 int BIT (int ) ;
 int USBD_EVENT_IRQ_MASK_REG ;
 int USBD_EVENT_IRQ_SETCFG ;
 int USBD_EVENT_IRQ_SETINTF ;
 int USBD_EVENT_IRQ_SETUP ;
 int USBD_EVENT_IRQ_STATUS_REG ;
 int USBD_EVENT_IRQ_USB_LINK ;
 int USBD_EVENT_IRQ_USB_RESET ;
 int USBD_STATUS_REG ;
 int usbd_writel (struct bcm63xx_udc*,int,int ) ;

__attribute__((used)) static void bcm63xx_set_ctrl_irqs(struct bcm63xx_udc *udc, bool enable_irqs)
{
 u32 val;

 usbd_writel(udc, 0, USBD_STATUS_REG);

 val = BIT(USBD_EVENT_IRQ_USB_RESET) |
       BIT(USBD_EVENT_IRQ_SETUP) |
       BIT(USBD_EVENT_IRQ_SETCFG) |
       BIT(USBD_EVENT_IRQ_SETINTF) |
       BIT(USBD_EVENT_IRQ_USB_LINK);
 usbd_writel(udc, enable_irqs ? val : 0, USBD_EVENT_IRQ_MASK_REG);
 usbd_writel(udc, val, USBD_EVENT_IRQ_STATUS_REG);
}
