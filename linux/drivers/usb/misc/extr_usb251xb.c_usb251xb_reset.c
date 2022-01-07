
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb251xb {TYPE_1__* i2c; int gpio_reset; } ;
struct TYPE_2__ {int adapter; } ;


 int I2C_LOCK_SEGMENT ;
 int gpiod_set_value_cansleep (int ,int) ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void usb251xb_reset(struct usb251xb *hub, int state)
{
 if (!hub->gpio_reset)
  return;

 i2c_lock_bus(hub->i2c->adapter, I2C_LOCK_SEGMENT);

 gpiod_set_value_cansleep(hub->gpio_reset, state);


 if (!state)
  usleep_range(500, 750);
 else
  usleep_range(1, 10);

 i2c_unlock_bus(hub->i2c->adapter, I2C_LOCK_SEGMENT);
}
