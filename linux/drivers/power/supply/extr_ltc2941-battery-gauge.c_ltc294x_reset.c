
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ltc294x_info {int id; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;



 int LTC2942_REG_CONTROL_MODE_SCAN ;

 int LTC2943_REG_CONTROL_MODE_SCAN ;

 int LTC294X_REG_CONTROL ;
 int LTC294X_REG_CONTROL_ALCC_CONFIG_DISABLED ;
 int LTC294X_REG_CONTROL_PRESCALER_SET (int) ;
 int dev_err (int *,char*) ;
 int ltc294x_read_regs (TYPE_1__*,int ,int*,int) ;
 int ltc294x_write_regs (TYPE_1__*,int ,int*,int) ;

__attribute__((used)) static int ltc294x_reset(const struct ltc294x_info *info, int prescaler_exp)
{
 int ret;
 u8 value;
 u8 control;


 ret = ltc294x_read_regs(info->client, LTC294X_REG_CONTROL, &value, 1);
 if (ret < 0) {
  dev_err(&info->client->dev,
   "Could not read registers from device\n");
  goto error_exit;
 }

 control = LTC294X_REG_CONTROL_PRESCALER_SET(prescaler_exp) |
    LTC294X_REG_CONTROL_ALCC_CONFIG_DISABLED;

 switch (info->id) {
 case 130:
  control |= LTC2942_REG_CONTROL_MODE_SCAN;
  break;
 case 129:
 case 128:
  control |= LTC2943_REG_CONTROL_MODE_SCAN;
  break;
 default:
  break;
 }

 if (value != control) {
  ret = ltc294x_write_regs(info->client,
   LTC294X_REG_CONTROL, &control, 1);
  if (ret < 0) {
   dev_err(&info->client->dev,
    "Could not write register\n");
   goto error_exit;
  }
 }

 return 0;

error_exit:
 return ret;
}
