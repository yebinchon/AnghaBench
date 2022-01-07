
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ speed; } ;
struct usba_udc {int suspended; int bias_pulse_needed; int num_ep; int configured_ep; int lock; TYPE_2__* pdev; struct usba_ep* usba_ep; TYPE_3__ gadget; TYPE_4__* driver; } ;
struct TYPE_7__ {int * desc; } ;
struct usba_ep {int ept_cfg; int state; TYPE_1__ ep; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {int (* resume ) (TYPE_3__*) ;int (* suspend ) (TYPE_3__*) ;} ;
struct TYPE_8__ {int dev; } ;


 int BK_NUMBER ;
 int CFG ;
 int CTL_ENB ;
 int DBG (int ,char*,...) ;
 int DBG_BUS ;
 int DBG_INT ;
 int DMA_INT ;
 int EP0_EPT_SIZE ;
 int EPT_INT ;
 int EPT_SIZE ;
 int EPT_TYPE ;
 int INT_CLR ;
 int INT_STA ;
 int IRQ_HANDLED ;
 int USBA_BF (int ,int) ;
 int USBA_BFEXT (int ,int) ;
 int USBA_BK_NUMBER_ONE ;
 int USBA_DET_SUSPEND ;
 int USBA_END_OF_RESET ;
 int USBA_END_OF_RESUME ;
 int USBA_EPT_ENABLE ;
 int USBA_EPT_MAPPED ;
 int USBA_EPT_TYPE_CONTROL ;
 int USBA_HIGH_SPEED ;
 int USBA_NR_DMAS ;
 int USBA_RX_SETUP ;
 int USBA_WAKE_UP ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int WAIT_FOR_SETUP ;
 int dev_err (int *,char*,...) ;
 scalar_t__ ep_is_control (struct usba_ep*) ;
 scalar_t__ fifo_mode ;
 int generate_bias_pulse (struct usba_udc*) ;
 int reset_all_endpoints (struct usba_udc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_clock (struct usba_udc*) ;
 int stop_clock (struct usba_udc*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int toggle_bias (struct usba_udc*,int) ;
 int usb_gadget_udc_reset (TYPE_3__*,TYPE_4__*) ;
 int usb_speed_string (scalar_t__) ;
 int usba_control_irq (struct usba_udc*,struct usba_ep*) ;
 int usba_dma_irq (struct usba_udc*,struct usba_ep*) ;
 int usba_ep0_desc ;
 int usba_ep_irq (struct usba_udc*,struct usba_ep*) ;
 int usba_ep_readl (struct usba_ep*,int ) ;
 int usba_ep_writel (struct usba_ep*,int ,int) ;
 int usba_int_enb_clear (struct usba_udc*,int) ;
 int usba_int_enb_get (struct usba_udc*) ;
 int usba_int_enb_set (struct usba_udc*,int) ;
 int usba_readl (struct usba_udc*,int ) ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static irqreturn_t usba_udc_irq(int irq, void *devid)
{
 struct usba_udc *udc = devid;
 u32 status, int_enb;
 u32 dma_status;
 u32 ep_status;

 spin_lock(&udc->lock);

 int_enb = usba_int_enb_get(udc);
 status = usba_readl(udc, INT_STA) & (int_enb | USBA_HIGH_SPEED);
 DBG(DBG_INT, "irq, status=%#08x\n", status);

 if (status & USBA_DET_SUSPEND) {
  usba_writel(udc, INT_CLR, USBA_DET_SUSPEND|USBA_WAKE_UP);
  usba_int_enb_set(udc, USBA_WAKE_UP);
  usba_int_enb_clear(udc, USBA_DET_SUSPEND);
  udc->suspended = 1;
  toggle_bias(udc, 0);
  udc->bias_pulse_needed = 1;
  stop_clock(udc);
  DBG(DBG_BUS, "Suspend detected\n");
  if (udc->gadget.speed != USB_SPEED_UNKNOWN
    && udc->driver && udc->driver->suspend) {
   spin_unlock(&udc->lock);
   udc->driver->suspend(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }

 if (status & USBA_WAKE_UP) {
  start_clock(udc);
  toggle_bias(udc, 1);
  usba_writel(udc, INT_CLR, USBA_WAKE_UP);
  DBG(DBG_BUS, "Wake Up CPU detected\n");
 }

 if (status & USBA_END_OF_RESUME) {
  udc->suspended = 0;
  usba_writel(udc, INT_CLR, USBA_END_OF_RESUME);
  usba_int_enb_clear(udc, USBA_WAKE_UP);
  usba_int_enb_set(udc, USBA_DET_SUSPEND);
  generate_bias_pulse(udc);
  DBG(DBG_BUS, "Resume detected\n");
  if (udc->gadget.speed != USB_SPEED_UNKNOWN
    && udc->driver && udc->driver->resume) {
   spin_unlock(&udc->lock);
   udc->driver->resume(&udc->gadget);
   spin_lock(&udc->lock);
  }
 }

 dma_status = USBA_BFEXT(DMA_INT, status);
 if (dma_status) {
  int i;

  usba_int_enb_set(udc, USBA_DET_SUSPEND);

  for (i = 1; i <= USBA_NR_DMAS; i++)
   if (dma_status & (1 << i))
    usba_dma_irq(udc, &udc->usba_ep[i]);
 }

 ep_status = USBA_BFEXT(EPT_INT, status);
 if (ep_status) {
  int i;

  usba_int_enb_set(udc, USBA_DET_SUSPEND);

  for (i = 0; i < udc->num_ep; i++)
   if (ep_status & (1 << i)) {
    if (ep_is_control(&udc->usba_ep[i]))
     usba_control_irq(udc, &udc->usba_ep[i]);
    else
     usba_ep_irq(udc, &udc->usba_ep[i]);
   }
 }

 if (status & USBA_END_OF_RESET) {
  struct usba_ep *ep0, *ep;
  int i, n;

  usba_writel(udc, INT_CLR,
   USBA_END_OF_RESET|USBA_END_OF_RESUME
   |USBA_DET_SUSPEND|USBA_WAKE_UP);
  generate_bias_pulse(udc);
  reset_all_endpoints(udc);

  if (udc->gadget.speed != USB_SPEED_UNKNOWN && udc->driver) {
   udc->gadget.speed = USB_SPEED_UNKNOWN;
   spin_unlock(&udc->lock);
   usb_gadget_udc_reset(&udc->gadget, udc->driver);
   spin_lock(&udc->lock);
  }

  if (status & USBA_HIGH_SPEED)
   udc->gadget.speed = USB_SPEED_HIGH;
  else
   udc->gadget.speed = USB_SPEED_FULL;
  DBG(DBG_BUS, "%s bus reset detected\n",
      usb_speed_string(udc->gadget.speed));

  ep0 = &udc->usba_ep[0];
  ep0->ep.desc = &usba_ep0_desc;
  ep0->state = WAIT_FOR_SETUP;
  usba_ep_writel(ep0, CFG,
    (USBA_BF(EPT_SIZE, EP0_EPT_SIZE)
    | USBA_BF(EPT_TYPE, USBA_EPT_TYPE_CONTROL)
    | USBA_BF(BK_NUMBER, USBA_BK_NUMBER_ONE)));
  usba_ep_writel(ep0, CTL_ENB,
    USBA_EPT_ENABLE | USBA_RX_SETUP);


  udc->suspended = 0;
  usba_int_enb_clear(udc, USBA_WAKE_UP);

  usba_int_enb_set(udc, USBA_BF(EPT_INT, 1) |
          USBA_DET_SUSPEND | USBA_END_OF_RESUME);





  if (!(usba_ep_readl(ep0, CFG) & USBA_EPT_MAPPED))
   dev_err(&udc->pdev->dev,
    "ODD: EP0 configuration is invalid!\n");


  n = fifo_mode ? udc->num_ep : udc->configured_ep;
  for (i = 1; i < n; i++) {
   ep = &udc->usba_ep[i];
   usba_ep_writel(ep, CFG, ep->ept_cfg);
   if (!(usba_ep_readl(ep, CFG) & USBA_EPT_MAPPED))
    dev_err(&udc->pdev->dev,
     "ODD: EP%d configuration is invalid!\n", i);
  }
 }

 spin_unlock(&udc->lock);

 return IRQ_HANDLED;
}
