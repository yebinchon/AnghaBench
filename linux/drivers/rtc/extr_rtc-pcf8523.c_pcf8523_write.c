
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int buffer ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int pcf8523_write(struct i2c_client *client, u8 reg, u8 value)
{
 u8 buffer[2] = { reg, value };
 struct i2c_msg msg;
 int err;

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = sizeof(buffer);
 msg.buf = buffer;

 err = i2c_transfer(client->adapter, &msg, 1);
 if (err < 0)
  return err;

 return 0;
}
