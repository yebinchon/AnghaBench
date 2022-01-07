
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_otg {int default_a; TYPE_3__* gadget; TYPE_2__* host; } ;
struct otg_fsm {int id; scalar_t__ a_conn; scalar_t__ b_conn; } ;
struct TYPE_5__ {struct usb_otg* otg; } ;
struct fsl_otg {int otg_event; TYPE_1__ phy; struct otg_fsm fsm; } ;
typedef int irqreturn_t ;
struct TYPE_8__ {int otgsc; } ;
struct TYPE_7__ {int is_a_peripheral; } ;
struct TYPE_6__ {int is_b_host; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OTGSC_INTSTS_MASK ;
 int OTGSC_INTSTS_USB_ID ;
 int OTGSC_STS_USB_ID ;
 int VDBG (char*,int) ;
 int cancel_delayed_work (int *) ;
 int fsl_otg_start_gadget (struct otg_fsm*,int ) ;
 int fsl_otg_start_host (struct otg_fsm*,int) ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 int otg_drv_vbus (struct otg_fsm*,int) ;
 int schedule_delayed_work (int *,int) ;
 TYPE_4__* usb_dr_regs ;

irqreturn_t fsl_otg_isr(int irq, void *dev_id)
{
 struct otg_fsm *fsm = &((struct fsl_otg *)dev_id)->fsm;
 struct usb_otg *otg = ((struct fsl_otg *)dev_id)->phy.otg;
 u32 otg_int_src, otg_sc;

 otg_sc = fsl_readl(&usb_dr_regs->otgsc);
 otg_int_src = otg_sc & OTGSC_INTSTS_MASK & (otg_sc >> 8);


 fsl_writel(otg_sc, &usb_dr_regs->otgsc);


 fsm->id = (otg_sc & OTGSC_STS_USB_ID) ? 1 : 0;
 otg->default_a = (fsm->id == 0);


 if (otg_int_src) {
  if (otg_int_src & OTGSC_INTSTS_USB_ID) {
   fsm->id = (otg_sc & OTGSC_STS_USB_ID) ? 1 : 0;
   otg->default_a = (fsm->id == 0);

   if (fsm->id)
    fsm->b_conn = 0;
   else
    fsm->a_conn = 0;

   if (otg->host)
    otg->host->is_b_host = fsm->id;
   if (otg->gadget)
    otg->gadget->is_a_peripheral = !fsm->id;
   VDBG("ID int (ID is %d)\n", fsm->id);

   if (fsm->id) {
    schedule_delayed_work(
     &((struct fsl_otg *)dev_id)->otg_event,
     100);
   } else {
    cancel_delayed_work(&
          ((struct fsl_otg *)dev_id)->
          otg_event);
    fsl_otg_start_gadget(fsm, 0);
    otg_drv_vbus(fsm, 1);
    fsl_otg_start_host(fsm, 1);
   }
   return IRQ_HANDLED;
  }
 }
 return IRQ_NONE;
}
