
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int b_hnp_enable; } ;
struct musb {int is_active; TYPE_5__* hcd; TYPE_3__* xceiv; int a_wait_bcon; int otg_timer; TYPE_1__ g; } ;
struct TYPE_9__ {int b_hnp_enable; } ;
struct TYPE_10__ {TYPE_4__ self; } ;
struct TYPE_8__ {TYPE_2__* otg; } ;
struct TYPE_7__ {int state; } ;




 int OTG_STATE_A_SUSPEND ;




 int OTG_STATE_B_WAIT_ACON ;
 int OTG_TIME_A_WAIT_BCON ;
 int OTG_TIME_B_ASE0_BRST ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int musb_dbg (struct musb*,char*,...) ;
 int musb_g_suspend (struct musb*) ;
 int musb_hnp_stop (struct musb*) ;
 int musb_host_resume_root_hub (struct musb*) ;
 int musb_platform_try_idle (struct musb*,scalar_t__) ;
 int musb_root_disconnect (struct musb*) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_handle_intr_suspend(struct musb *musb, u8 devctl)
{
 musb_dbg(musb, "SUSPEND (%s) devctl %02x",
  usb_otg_state_string(musb->xceiv->otg->state), devctl);

 switch (musb->xceiv->otg->state) {
 case 132:







  musb_hnp_stop(musb);
  musb_host_resume_root_hub(musb);
  musb_root_disconnect(musb);
  musb_platform_try_idle(musb, jiffies
    + msecs_to_jiffies(musb->a_wait_bcon
     ? : OTG_TIME_A_WAIT_BCON));

  break;
 case 129:
  if (!musb->is_active)
   break;

 case 128:
  musb_g_suspend(musb);
  musb->is_active = musb->g.b_hnp_enable;
  if (musb->is_active) {
   musb->xceiv->otg->state = OTG_STATE_B_WAIT_ACON;
   musb_dbg(musb, "HNP: Setting timer for b_ase0_brst");
   mod_timer(&musb->otg_timer, jiffies
    + msecs_to_jiffies(
      OTG_TIME_B_ASE0_BRST));
  }
  break;
 case 131:
  if (musb->a_wait_bcon != 0)
   musb_platform_try_idle(musb, jiffies
    + msecs_to_jiffies(musb->a_wait_bcon));
  break;
 case 133:
  musb->xceiv->otg->state = OTG_STATE_A_SUSPEND;
  musb->is_active = musb->hcd->self.b_hnp_enable;
  break;
 case 130:

  musb_dbg(musb, "REVISIT: SUSPEND as B_HOST");
  break;
 default:

  musb->is_active = 0;
  break;
 }
}
