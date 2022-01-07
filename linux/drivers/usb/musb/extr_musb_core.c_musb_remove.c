
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct musb {int xceiv; scalar_t__ dma_controller; int controller; int lock; int mregs; int deassert_reset_work; int finish_resume_work; int irq_work; } ;


 int MUSB_DEVCTL ;
 int cancel_delayed_work_sync (int *) ;
 struct musb* dev_to_musb (struct device*) ;
 int device_init_wakeup (struct device*,int ) ;
 int musb_disable_interrupts (struct musb*) ;
 int musb_dma_controller_destroy (scalar_t__) ;
 int musb_exit_debugfs (struct musb*) ;
 int musb_free (struct musb*) ;
 int musb_gadget_cleanup (struct musb*) ;
 int musb_host_cleanup (struct musb*) ;
 int * musb_phy_callback ;
 int musb_platform_disable (struct musb*) ;
 int musb_platform_exit (struct musb*) ;
 int musb_writeb (int ,int ,int ) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_phy_shutdown (int ) ;

__attribute__((used)) static int musb_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct musb *musb = dev_to_musb(dev);
 unsigned long flags;






 musb_exit_debugfs(musb);

 cancel_delayed_work_sync(&musb->irq_work);
 cancel_delayed_work_sync(&musb->finish_resume_work);
 cancel_delayed_work_sync(&musb->deassert_reset_work);
 pm_runtime_get_sync(musb->controller);
 musb_host_cleanup(musb);
 musb_gadget_cleanup(musb);

 musb_platform_disable(musb);
 spin_lock_irqsave(&musb->lock, flags);
 musb_disable_interrupts(musb);
 musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
 spin_unlock_irqrestore(&musb->lock, flags);
 musb_platform_exit(musb);

 pm_runtime_dont_use_autosuspend(musb->controller);
 pm_runtime_put_sync(musb->controller);
 pm_runtime_disable(musb->controller);
 musb_phy_callback = ((void*)0);
 if (musb->dma_controller)
  musb_dma_controller_destroy(musb->dma_controller);
 usb_phy_shutdown(musb->xceiv);
 musb_free(musb);
 device_init_wakeup(dev, 0);
 return 0;
}
