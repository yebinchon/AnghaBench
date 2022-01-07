
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1301 {int work; int timer; int todo; } ;
struct i2c_client {int dev; int irq; } ;


 int ISP1301_INTERRUPT_FALLING ;
 int ISP1301_INTERRUPT_RISING ;
 int WORK_STOP ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int free_irq (int ,struct isp1301*) ;
 int gpio_free (int) ;
 struct isp1301* i2c_get_clientdata (struct i2c_client*) ;
 int isp1301_clear_bits (struct isp1301*,int ,int ) ;
 scalar_t__ machine_is_omap_h2 () ;
 int otg_unbind (struct isp1301*) ;
 int put_device (int *) ;
 int set_bit (int ,int *) ;
 int * the_transceiver ;

__attribute__((used)) static int isp1301_remove(struct i2c_client *i2c)
{
 struct isp1301 *isp;

 isp = i2c_get_clientdata(i2c);

 isp1301_clear_bits(isp, ISP1301_INTERRUPT_FALLING, ~0);
 isp1301_clear_bits(isp, ISP1301_INTERRUPT_RISING, ~0);
 free_irq(i2c->irq, isp);



 if (machine_is_omap_h2())
  gpio_free(2);

 set_bit(WORK_STOP, &isp->todo);
 del_timer_sync(&isp->timer);
 flush_work(&isp->work);

 put_device(&i2c->dev);
 the_transceiver = ((void*)0);

 return 0;
}
