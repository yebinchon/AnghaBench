
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int po; int reset; } ;
struct ifx_spi_device {scalar_t__ mdm_reset_state; TYPE_2__* spi_dev; int mdm_reset_wait; TYPE_1__ gpio; } ;
struct TYPE_4__ {int dev; } ;


 int IFX_RESET_TIMEOUT ;
 int MR_COMPLETE ;
 int MR_START ;
 int dev_warn (int *,char*,scalar_t__) ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int set_bit (int ,scalar_t__*) ;
 int test_bit (int ,scalar_t__*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int ifx_spi_reset(struct ifx_spi_device *ifx_dev)
{
 int ret;






 set_bit(MR_START, &ifx_dev->mdm_reset_state);
 gpio_set_value(ifx_dev->gpio.po, 0);
 gpio_set_value(ifx_dev->gpio.reset, 0);
 msleep(25);
 gpio_set_value(ifx_dev->gpio.reset, 1);
 msleep(1);
 gpio_set_value(ifx_dev->gpio.po, 1);
 msleep(1);
 gpio_set_value(ifx_dev->gpio.po, 0);
 ret = wait_event_timeout(ifx_dev->mdm_reset_wait,
     test_bit(MR_COMPLETE,
       &ifx_dev->mdm_reset_state),
     IFX_RESET_TIMEOUT);
 if (!ret)
  dev_warn(&ifx_dev->spi_dev->dev, "Modem reset timeout: (state:%lx)",
    ifx_dev->mdm_reset_state);

 ifx_dev->mdm_reset_state = 0;
 return ret;
}
