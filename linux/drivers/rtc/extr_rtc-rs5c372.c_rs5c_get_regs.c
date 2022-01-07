
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs5c372 {int * regs; scalar_t__ buf; scalar_t__ smbus; struct i2c_client* client; } ;
struct i2c_msg {int len; scalar_t__ buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int RS5C372_REG_SECS ;
 int RS5C_ADDR (int ) ;
 int dev_dbg (int *,char*,int *,int ,int *,int ,int *,int *,int ,int ) ;
 int dev_warn (int *,char*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int,int,scalar_t__) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int rs5c_get_regs(struct rs5c372 *rs5c)
{
 struct i2c_client *client = rs5c->client;
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(rs5c->buf),
   .buf = rs5c->buf
  },
 };
 if (rs5c->smbus) {
  int addr = RS5C_ADDR(RS5C372_REG_SECS);
  int size = sizeof(rs5c->buf) - 1;

  if (i2c_smbus_read_i2c_block_data(client, addr, size,
        rs5c->buf + 1) != size) {
   dev_warn(&client->dev, "can't read registers\n");
   return -EIO;
  }
 } else {
  if ((i2c_transfer(client->adapter, msgs, 1)) != 1) {
   dev_warn(&client->dev, "can't read registers\n");
   return -EIO;
  }
 }

 dev_dbg(&client->dev,
  "%3ph (%02x) %3ph (%02x), %3ph, %3ph; %02x %02x\n",
  rs5c->regs + 0, rs5c->regs[3],
  rs5c->regs + 4, rs5c->regs[7],
  rs5c->regs + 8, rs5c->regs + 11,
  rs5c->regs[14], rs5c->regs[15]);

 return 0;
}
