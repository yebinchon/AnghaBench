
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int * driver; scalar_t__ enabled; int lock; int enabled_ep_cnt; int ep_disable_wait_queue; scalar_t__ clocked; int isp1301_i2c_client; } ;


 int ISP1301_I2C_INTERRUPT_FALLING ;
 int ISP1301_I2C_INTERRUPT_RISING ;
 int ISP1301_I2C_REG_CLEAR_ADDR ;
 scalar_t__ atomic_read (int *) ;
 int i2c_smbus_write_byte_data (int ,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_activity (struct lpc32xx_udc*) ;
 struct lpc32xx_udc* to_udc (struct usb_gadget*) ;
 int udc_clk_set (struct lpc32xx_udc*,int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int lpc32xx_stop(struct usb_gadget *gadget)
{
 struct lpc32xx_udc *udc = to_udc(gadget);

 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_INTERRUPT_FALLING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);
 i2c_smbus_write_byte_data(udc->isp1301_i2c_client,
  ISP1301_I2C_INTERRUPT_RISING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);

 if (udc->clocked) {
  spin_lock(&udc->lock);
  stop_activity(udc);
  spin_unlock(&udc->lock);






  if (atomic_read(&udc->enabled_ep_cnt))
   wait_event_interruptible(udc->ep_disable_wait_queue,
    (atomic_read(&udc->enabled_ep_cnt) == 0));

  spin_lock(&udc->lock);
  udc_clk_set(udc, 0);
  spin_unlock(&udc->lock);
 }

 udc->enabled = 0;
 udc->driver = ((void*)0);

 return 0;
}
