
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct musb {TYPE_4__* xceiv; TYPE_2__* hcd; int a_wait_bcon; } ;
struct TYPE_8__ {TYPE_3__* otg; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_5__ {int is_b_host; } ;
struct TYPE_6__ {TYPE_1__ self; } ;


 int MUSB_DEV_MODE (struct musb*) ;
 int MUSB_MODE (struct musb*) ;







 int WARNING (char*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int musb_dbg (struct musb*,char*,int ,int ,int ) ;
 int musb_g_disconnect (struct musb*) ;
 int musb_hnp_stop (struct musb*) ;
 int musb_host_resume_root_hub (struct musb*) ;
 int musb_platform_try_idle (struct musb*,scalar_t__) ;
 int musb_root_disconnect (struct musb*) ;
 int usb_otg_state_string (int) ;

__attribute__((used)) static void musb_handle_intr_disconnect(struct musb *musb, u8 devctl)
{
 musb_dbg(musb, "DISCONNECT (%s) as %s, devctl %02x",
   usb_otg_state_string(musb->xceiv->otg->state),
   MUSB_MODE(musb), devctl);

 switch (musb->xceiv->otg->state) {
 case 134:
 case 132:
  musb_host_resume_root_hub(musb);
  musb_root_disconnect(musb);
  if (musb->a_wait_bcon != 0)
   musb_platform_try_idle(musb, jiffies
    + msecs_to_jiffies(musb->a_wait_bcon));
  break;
 case 131:





  musb_root_disconnect(musb);
  if (musb->hcd)
   musb->hcd->self.is_b_host = 0;
  musb->xceiv->otg->state = 129;
  MUSB_DEV_MODE(musb);
  musb_g_disconnect(musb);
  break;
 case 133:
  musb_hnp_stop(musb);
  musb_root_disconnect(musb);

 case 128:

 case 129:
 case 130:
  musb_g_disconnect(musb);
  break;
 default:
  WARNING("unhandled DISCONNECT transition (%s)\n",
   usb_otg_state_string(musb->xceiv->otg->state));
  break;
 }
}
