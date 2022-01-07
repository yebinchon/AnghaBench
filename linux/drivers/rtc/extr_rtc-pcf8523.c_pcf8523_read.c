
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int reg ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;

__attribute__((used)) static int pcf8523_read(struct i2c_client *client, u8 reg, u8 *valuep)
{
 struct i2c_msg msgs[2];
 u8 value = 0;
 int err;

 msgs[0].addr = client->addr;
 msgs[0].flags = 0;
 msgs[0].len = sizeof(reg);
 msgs[0].buf = &reg;

 msgs[1].addr = client->addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = sizeof(value);
 msgs[1].buf = &value;

 err = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (err < 0)
  return err;

 *valuep = value;

 return 0;
}
