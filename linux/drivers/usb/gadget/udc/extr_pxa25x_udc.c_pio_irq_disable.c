
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_ep {int bEndpointAddress; int dev; } ;


 int UICR0 ;
 int UICR1 ;
 int udc_get_reg (int ,int ) ;
 int udc_set_reg (int ,int ,int) ;

__attribute__((used)) static void pio_irq_disable(struct pxa25x_ep *ep)
{
 u32 bEndpointAddress = ep->bEndpointAddress & 0xf;

        if (bEndpointAddress < 8)
                udc_set_reg(ep->dev, UICR0, udc_get_reg(ep->dev, UICR0) |
      (1 << bEndpointAddress));
        else {
                bEndpointAddress -= 8;
                udc_set_reg(ep->dev, UICR1, udc_get_reg(ep->dev, UICR1) |
      (1 << bEndpointAddress));
        }
}
