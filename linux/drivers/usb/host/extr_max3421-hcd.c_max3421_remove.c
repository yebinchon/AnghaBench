
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int irq; int dev; } ;
struct max3421_hcd {int lock; struct max3421_hcd* next; int spi_thread; } ;


 int ENODEV ;
 int dev_err (int *,char*,struct spi_device*) ;
 int free_irq (int ,struct usb_hcd*) ;
 int kthread_stop (int ) ;
 struct max3421_hcd* max3421_hcd_list ;
 struct usb_hcd* max3421_to_hcd (struct max3421_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int
max3421_remove(struct spi_device *spi)
{
 struct max3421_hcd *max3421_hcd = ((void*)0), **prev;
 struct usb_hcd *hcd = ((void*)0);
 unsigned long flags;

 for (prev = &max3421_hcd_list; *prev; prev = &(*prev)->next) {
  max3421_hcd = *prev;
  hcd = max3421_to_hcd(max3421_hcd);
  if (hcd->self.controller == &spi->dev)
   break;
 }
 if (!max3421_hcd) {
  dev_err(&spi->dev, "no MAX3421 HCD found for SPI device %p\n",
   spi);
  return -ENODEV;
 }

 usb_remove_hcd(hcd);

 spin_lock_irqsave(&max3421_hcd->lock, flags);

 kthread_stop(max3421_hcd->spi_thread);
 *prev = max3421_hcd->next;

 spin_unlock_irqrestore(&max3421_hcd->lock, flags);

 free_irq(spi->irq, hcd);

 usb_put_hcd(hcd);
 return 0;
}
