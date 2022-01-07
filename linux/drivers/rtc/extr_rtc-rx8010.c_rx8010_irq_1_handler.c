
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx8010_data {TYPE_1__* rtc; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ops_lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_PF ;
 int RTC_UF ;
 int RX8010_FLAG ;
 int RX8010_FLAG_AF ;
 int RX8010_FLAG_TF ;
 int RX8010_FLAG_UF ;
 int RX8010_FLAG_VLF ;
 int dev_warn (int *,char*) ;
 struct rx8010_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t rx8010_irq_1_handler(int irq, void *dev_id)
{
 struct i2c_client *client = dev_id;
 struct rx8010_data *rx8010 = i2c_get_clientdata(client);
 int flagreg;

 mutex_lock(&rx8010->rtc->ops_lock);

 flagreg = i2c_smbus_read_byte_data(client, RX8010_FLAG);

 if (flagreg <= 0) {
  mutex_unlock(&rx8010->rtc->ops_lock);
  return IRQ_NONE;
 }

 if (flagreg & RX8010_FLAG_VLF)
  dev_warn(&client->dev, "Frequency stop detected\n");

 if (flagreg & RX8010_FLAG_TF) {
  flagreg &= ~RX8010_FLAG_TF;
  rtc_update_irq(rx8010->rtc, 1, RTC_PF | RTC_IRQF);
 }

 if (flagreg & RX8010_FLAG_AF) {
  flagreg &= ~RX8010_FLAG_AF;
  rtc_update_irq(rx8010->rtc, 1, RTC_AF | RTC_IRQF);
 }

 if (flagreg & RX8010_FLAG_UF) {
  flagreg &= ~RX8010_FLAG_UF;
  rtc_update_irq(rx8010->rtc, 1, RTC_UF | RTC_IRQF);
 }

 i2c_smbus_write_byte_data(client, RX8010_FLAG, flagreg);

 mutex_unlock(&rx8010->rtc->ops_lock);
 return IRQ_HANDLED;
}
