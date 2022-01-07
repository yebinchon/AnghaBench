
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx8025_data {int ctrl1; TYPE_1__* rtc; } ;
struct mutex {int dummy; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_PF ;
 int RX8025_BIT_CTRL1_DALE ;
 int RX8025_BIT_CTRL2_CTFG ;
 int RX8025_BIT_CTRL2_DAFG ;
 int RX8025_BIT_CTRL2_XST ;
 int RX8025_REG_CTRL1 ;
 int RX8025_REG_CTRL2 ;
 int dev_warn (int *,char*) ;
 struct rx8025_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;
 int rx8025_read_reg (struct i2c_client*,int ) ;
 scalar_t__ rx8025_write_reg (struct i2c_client*,int ,int) ;

__attribute__((used)) static irqreturn_t rx8025_handle_irq(int irq, void *dev_id)
{
 struct i2c_client *client = dev_id;
 struct rx8025_data *rx8025 = i2c_get_clientdata(client);
 struct mutex *lock = &rx8025->rtc->ops_lock;
 int status;

 mutex_lock(lock);
 status = rx8025_read_reg(client, RX8025_REG_CTRL2);
 if (status < 0)
  goto out;

 if (!(status & RX8025_BIT_CTRL2_XST))
  dev_warn(&client->dev, "Oscillation stop was detected,"
    "you may have to readjust the clock\n");

 if (status & RX8025_BIT_CTRL2_CTFG) {

  status &= ~RX8025_BIT_CTRL2_CTFG;
  rtc_update_irq(rx8025->rtc, 1, RTC_PF | RTC_IRQF);
 }

 if (status & RX8025_BIT_CTRL2_DAFG) {

  status &= RX8025_BIT_CTRL2_DAFG;
  if (rx8025_write_reg(client, RX8025_REG_CTRL1,
         rx8025->ctrl1 & ~RX8025_BIT_CTRL1_DALE))
   goto out;
  rtc_update_irq(rx8025->rtc, 1, RTC_AF | RTC_IRQF);
 }

out:
 mutex_unlock(lock);

 return IRQ_HANDLED;
}
