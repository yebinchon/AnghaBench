
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int dev; int irq; int bits_per_word; int max_speed_hz; } ;
struct max3421_hcd {int rev; int hien; int* iopins; int todo; int curr_urb; scalar_t__ urb_done; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int ) ;
 int CHECK_UNLINK ;
 int ENABLE_IRQ ;
 int IOPIN_UPDATE ;
 int MAX3421_HCTL_BUSRST_BIT ;
 int MAX3421_PINCTL_FDUPSPI_BIT ;
 int MAX3421_PINCTL_INTLEVEL_BIT ;
 scalar_t__ MAX3421_REG_HCTL ;
 scalar_t__ MAX3421_REG_HIEN ;
 scalar_t__ MAX3421_REG_IOPINS1 ;
 scalar_t__ MAX3421_REG_PINCTL ;
 scalar_t__ MAX3421_REG_REVISION ;
 int RESET_HCD ;
 int RESET_PORT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int enable_irq (int ) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int kthread_should_stop () ;
 int max3421_check_unlink (struct usb_hcd*) ;
 scalar_t__ max3421_handle_irqs (struct usb_hcd*) ;
 int max3421_reset_hcd (struct usb_hcd*) ;
 int max3421_select_and_start_urb (struct usb_hcd*) ;
 int max3421_urb_done (struct usb_hcd*) ;
 int msleep (int) ;
 int schedule () ;
 int set_current_state (int ) ;
 void* spi_rd8 (struct usb_hcd*,scalar_t__) ;
 int spi_wr8 (struct usb_hcd*,scalar_t__,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int
max3421_spi_thread(void *dev_id)
{
 struct usb_hcd *hcd = dev_id;
 struct spi_device *spi = to_spi_device(hcd->self.controller);
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 int i, i_worked = 1;


 spi_wr8(hcd, MAX3421_REG_PINCTL,
  (BIT(MAX3421_PINCTL_FDUPSPI_BIT) |
   BIT(MAX3421_PINCTL_INTLEVEL_BIT)));

 while (!kthread_should_stop()) {
  max3421_hcd->rev = spi_rd8(hcd, MAX3421_REG_REVISION);
  if (max3421_hcd->rev == 0x12 || max3421_hcd->rev == 0x13)
   break;
  dev_err(&spi->dev, "bad rev 0x%02x", max3421_hcd->rev);
  msleep(10000);
 }
 dev_info(&spi->dev, "rev 0x%x, SPI clk %dHz, bpw %u, irq %d\n",
   max3421_hcd->rev, spi->max_speed_hz, spi->bits_per_word,
   spi->irq);

 while (!kthread_should_stop()) {
  if (!i_worked) {





   spi_wr8(hcd, MAX3421_REG_HIEN, max3421_hcd->hien);

   set_current_state(TASK_INTERRUPTIBLE);
   if (test_and_clear_bit(ENABLE_IRQ, &max3421_hcd->todo))
    enable_irq(spi->irq);
   schedule();
   __set_current_state(TASK_RUNNING);
  }

  i_worked = 0;

  if (max3421_hcd->urb_done)
   i_worked |= max3421_urb_done(hcd);
  else if (max3421_handle_irqs(hcd))
   i_worked = 1;
  else if (!max3421_hcd->curr_urb)
   i_worked |= max3421_select_and_start_urb(hcd);

  if (test_and_clear_bit(RESET_HCD, &max3421_hcd->todo))

   i_worked |= max3421_reset_hcd(hcd);
  if (test_and_clear_bit(RESET_PORT, &max3421_hcd->todo)) {

   spi_wr8(hcd, MAX3421_REG_HCTL,
    BIT(MAX3421_HCTL_BUSRST_BIT));
   i_worked = 1;
  }
  if (test_and_clear_bit(CHECK_UNLINK, &max3421_hcd->todo))
   i_worked |= max3421_check_unlink(hcd);
  if (test_and_clear_bit(IOPIN_UPDATE, &max3421_hcd->todo)) {




   for (i = 0; i < ARRAY_SIZE(max3421_hcd->iopins); ++i) {
    u8 val = spi_rd8(hcd, MAX3421_REG_IOPINS1);

    val = ((val & 0xf0) |
           (max3421_hcd->iopins[i] & 0x0f));
    spi_wr8(hcd, MAX3421_REG_IOPINS1 + i, val);
    max3421_hcd->iopins[i] = val;
   }
   i_worked = 1;
  }
 }
 set_current_state(TASK_RUNNING);
 dev_info(&spi->dev, "SPI thread exiting");
 return 0;
}
