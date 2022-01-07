
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct musb {int quirk_retries; int session; int controller; int irq_work; int flush_irq_work; int mregs; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_FSDEV ;
 int MUSB_DEVCTL_HR ;
 int MUSB_DEVCTL_LSDEV ;
 int MUSB_DEVCTL_SESSION ;


 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int) ;
 int musb_dbg (struct musb*,char*,...) ;
 int musb_readb (int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void musb_pm_runtime_check_session(struct musb *musb)
{
 u8 devctl, s;
 int error;

 devctl = musb_readb(musb->mregs, MUSB_DEVCTL);


 s = MUSB_DEVCTL_FSDEV | MUSB_DEVCTL_LSDEV |
  MUSB_DEVCTL_HR;
 switch (devctl & ~s) {
 case 128:
  if (musb->quirk_retries && !musb->flush_irq_work) {
   musb_dbg(musb,
     "Poll devctl on invalid vbus, assume no session");
   schedule_delayed_work(&musb->irq_work,
           msecs_to_jiffies(1000));
   musb->quirk_retries--;
   return;
  }

 case 129:
  if (musb->quirk_retries && !musb->flush_irq_work) {
   musb_dbg(musb,
     "Poll devctl on possible host mode disconnect");
   schedule_delayed_work(&musb->irq_work,
           msecs_to_jiffies(1000));
   musb->quirk_retries--;
   return;
  }
  if (!musb->session)
   break;
  musb_dbg(musb, "Allow PM on possible host mode disconnect");
  pm_runtime_mark_last_busy(musb->controller);
  pm_runtime_put_autosuspend(musb->controller);
  musb->session = 0;
  return;
 default:
  break;
 }


 s = devctl & MUSB_DEVCTL_SESSION;
 if (s == musb->session)
  return;


 if (s) {
  musb_dbg(musb, "Block PM on active session: %02x", devctl);
  error = pm_runtime_get_sync(musb->controller);
  if (error < 0)
   dev_err(musb->controller, "Could not enable: %i\n",
    error);
  musb->quirk_retries = 3;
 } else {
  musb_dbg(musb, "Allow PM with no session: %02x", devctl);
  pm_runtime_mark_last_busy(musb->controller);
  pm_runtime_put_autosuspend(musb->controller);
 }

 musb->session = s;
}
