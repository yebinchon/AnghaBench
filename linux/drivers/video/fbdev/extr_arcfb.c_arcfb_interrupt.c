
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct arcfb_par {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KS_CLRINT ;
 unsigned char KS_INTACK ;
 int arcfb_waitq ;
 unsigned char ks108_readb_ctl2 (struct arcfb_par*) ;
 int ks108_writeb_mainctl (struct arcfb_par*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t arcfb_interrupt(int vec, void *dev_instance)
{
 struct fb_info *info = dev_instance;
 unsigned char ctl2status;
 struct arcfb_par *par = info->par;

 ctl2status = ks108_readb_ctl2(par);

 if (!(ctl2status & KS_INTACK))
  return IRQ_NONE;

 ks108_writeb_mainctl(par, KS_CLRINT);

 spin_lock(&par->lock);
        if (waitqueue_active(&arcfb_waitq)) {
                wake_up(&arcfb_waitq);
        }
 spin_unlock(&par->lock);

 return IRQ_HANDLED;
}
