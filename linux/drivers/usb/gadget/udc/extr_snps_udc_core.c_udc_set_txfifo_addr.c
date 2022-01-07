
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct udc_ep {int num; int txfifo; struct udc* dev; int in; } ;
struct udc {TYPE_2__* ep; int txfifo; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int bufin_framenum; } ;


 scalar_t__ AMD_GETBITS (scalar_t__,int ) ;
 int EINVAL ;
 int UDC_EPIN_BUFF_SIZE ;
 scalar_t__ readl (int *) ;

__attribute__((used)) static int udc_set_txfifo_addr(struct udc_ep *ep)
{
 struct udc *dev;
 u32 tmp;
 int i;

 if (!ep || !(ep->in))
  return -EINVAL;

 dev = ep->dev;
 ep->txfifo = dev->txfifo;


 for (i = 0; i < ep->num; i++) {
  if (dev->ep[i].regs) {

   tmp = readl(&dev->ep[i].regs->bufin_framenum);
   tmp = AMD_GETBITS(tmp, UDC_EPIN_BUFF_SIZE);
   ep->txfifo += tmp;
  }
 }
 return 0;
}
