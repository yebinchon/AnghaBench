
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; int tm_hour; int tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rs5c372 {int* regs; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;


 int EINVAL ;
 int EIO ;
 int RS5C_ADDR (size_t) ;
 int RS5C_CTRL1_AALE ;
 int RS5C_REG_ALARM_A_MIN ;
 size_t RS5C_REG_CTRL1 ;
 unsigned char bin2bcd (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 struct rs5c372* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int,unsigned char) ;
 int rs5c_get_regs (struct rs5c372*) ;
 unsigned char rs5c_hr2reg (struct rs5c372*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rs5c_set_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rs5c372 *rs5c = i2c_get_clientdata(client);
 int status, addr, i;
 unsigned char buf[3];


 if (t->time.tm_mday != -1
   || t->time.tm_mon != -1
   || t->time.tm_year != -1)
  return -EINVAL;




 status = rs5c_get_regs(rs5c);
 if (status < 0)
  return status;
 if (rs5c->regs[RS5C_REG_CTRL1] & RS5C_CTRL1_AALE) {
  addr = RS5C_ADDR(RS5C_REG_CTRL1);
  buf[0] = rs5c->regs[RS5C_REG_CTRL1] & ~RS5C_CTRL1_AALE;
  if (i2c_smbus_write_byte_data(client, addr, buf[0]) < 0) {
   dev_dbg(dev, "can't disable alarm\n");
   return -EIO;
  }
  rs5c->regs[RS5C_REG_CTRL1] = buf[0];
 }


 buf[0] = bin2bcd(t->time.tm_min);
 buf[1] = rs5c_hr2reg(rs5c, t->time.tm_hour);
 buf[2] = 0x7f;

 for (i = 0; i < sizeof(buf); i++) {
  addr = RS5C_ADDR(RS5C_REG_ALARM_A_MIN + i);
  if (i2c_smbus_write_byte_data(client, addr, buf[i]) < 0) {
   dev_dbg(dev, "can't set alarm time\n");
   return -EIO;
  }
 }


 if (t->enabled) {
  addr = RS5C_ADDR(RS5C_REG_CTRL1);
  buf[0] = rs5c->regs[RS5C_REG_CTRL1] | RS5C_CTRL1_AALE;
  if (i2c_smbus_write_byte_data(client, addr, buf[0]) < 0)
   dev_warn(dev, "can't enable alarm\n");
  rs5c->regs[RS5C_REG_CTRL1] = buf[0];
 }

 return 0;
}
