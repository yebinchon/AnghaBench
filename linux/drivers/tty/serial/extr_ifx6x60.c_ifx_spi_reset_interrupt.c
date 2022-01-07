
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_out; } ;
struct ifx_spi_device {int mdm_reset_wait; int mdm_reset_state; int tty_port; TYPE_1__ gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MR_COMPLETE ;
 int MR_INPROGRESS ;
 int MR_START ;
 int clear_bit (int ,int *) ;
 int gpio_get_value (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int tty_port_tty_hangup (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ifx_spi_reset_interrupt(int irq, void *dev)
{
 struct ifx_spi_device *ifx_dev = dev;
 int val = gpio_get_value(ifx_dev->gpio.reset_out);
 int solreset = test_bit(MR_START, &ifx_dev->mdm_reset_state);

 if (val == 0) {

  set_bit(MR_INPROGRESS, &ifx_dev->mdm_reset_state);
  if (!solreset) {

   tty_port_tty_hangup(&ifx_dev->tty_port, 0);
  }
 } else {

  clear_bit(MR_INPROGRESS, &ifx_dev->mdm_reset_state);
  if (solreset) {
   set_bit(MR_COMPLETE, &ifx_dev->mdm_reset_state);
   wake_up(&ifx_dev->mdm_reset_wait);
  }
 }
 return IRQ_HANDLED;
}
