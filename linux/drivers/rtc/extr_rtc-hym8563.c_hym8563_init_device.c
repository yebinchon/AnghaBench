
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int HYM8563_CTL1 ;
 int HYM8563_CTL2 ;
 int HYM8563_CTL2_AF ;
 int HYM8563_CTL2_AIE ;
 int HYM8563_CTL2_TF ;
 int HYM8563_CTL2_TIE ;
 int HYM8563_CTL2_TI_TP ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int hym8563_init_device(struct i2c_client *client)
{
 int ret;


 ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(client, HYM8563_CTL2);
 if (ret < 0)
  return ret;


 ret &= ~HYM8563_CTL2_AIE;
 ret &= ~HYM8563_CTL2_TIE;


 if (ret & HYM8563_CTL2_AF)
  ret &= ~HYM8563_CTL2_AF;

 if (ret & HYM8563_CTL2_TF)
  ret &= ~HYM8563_CTL2_TF;

 ret &= ~HYM8563_CTL2_TI_TP;

 return i2c_smbus_write_byte_data(client, HYM8563_CTL2, ret);
}
