
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ltc294x_info {scalar_t__ id; int client; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ LTC2941_ID ;
 int LTC294X_REG_CONTROL ;
 scalar_t__ LTC294X_REG_CONTROL_ADC_DISABLE (scalar_t__) ;
 struct ltc294x_info* i2c_get_clientdata (struct i2c_client*) ;
 int ltc294x_read_regs (int ,int ,scalar_t__*,int) ;
 int ltc294x_write_regs (int ,int ,scalar_t__*,int) ;

__attribute__((used)) static void ltc294x_i2c_shutdown(struct i2c_client *client)
{
 struct ltc294x_info *info = i2c_get_clientdata(client);
 int ret;
 u8 value;
 u8 control;


 if (info->id == LTC2941_ID)
  return;


 ret = ltc294x_read_regs(info->client, LTC294X_REG_CONTROL, &value, 1);
 if (ret < 0)
  return;


 control = LTC294X_REG_CONTROL_ADC_DISABLE(value);
 if (control != value)
  ltc294x_write_regs(info->client, LTC294X_REG_CONTROL,
   &control, 1);
}
