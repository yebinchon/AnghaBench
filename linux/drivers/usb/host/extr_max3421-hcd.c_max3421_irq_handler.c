
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int irq; } ;
struct max3421_hcd {int todo; TYPE_2__* spi_thread; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {scalar_t__ state; } ;


 int ENABLE_IRQ ;
 int IRQ_HANDLED ;
 scalar_t__ TASK_RUNNING ;
 int disable_irq_nosync (int ) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int test_and_set_bit (int ,int *) ;
 struct spi_device* to_spi_device (int ) ;
 int wake_up_process (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t
max3421_irq_handler(int irq, void *dev_id)
{
 struct usb_hcd *hcd = dev_id;
 struct spi_device *spi = to_spi_device(hcd->self.controller);
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);

 if (max3421_hcd->spi_thread &&
     max3421_hcd->spi_thread->state != TASK_RUNNING)
  wake_up_process(max3421_hcd->spi_thread);
 if (!test_and_set_bit(ENABLE_IRQ, &max3421_hcd->todo))
  disable_irq_nosync(spi->irq);
 return IRQ_HANDLED;
}
