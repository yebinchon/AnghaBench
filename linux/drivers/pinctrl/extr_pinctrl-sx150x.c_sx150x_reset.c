
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_3__* data; int client; } ;
struct TYPE_4__ {int reg_reset; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; } ;


 int SX150X_789_RESET_KEY1 ;
 int SX150X_789_RESET_KEY2 ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int sx150x_reset(struct sx150x_pinctrl *pctl)
{
 int err;

 err = i2c_smbus_write_byte_data(pctl->client,
     pctl->data->pri.x789.reg_reset,
     SX150X_789_RESET_KEY1);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(pctl->client,
     pctl->data->pri.x789.reg_reset,
     SX150X_789_RESET_KEY2);
 return err;
}
