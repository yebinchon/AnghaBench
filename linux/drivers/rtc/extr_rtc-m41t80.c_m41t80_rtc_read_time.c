
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned char tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;
typedef int buf ;


 int EINVAL ;
 int M41T80_FLAGS_OF ;
 size_t M41T80_REG_DAY ;
 int M41T80_REG_FLAGS ;
 size_t M41T80_REG_HOUR ;
 size_t M41T80_REG_MIN ;
 size_t M41T80_REG_MON ;
 size_t M41T80_REG_SEC ;
 int M41T80_REG_SSEC ;
 size_t M41T80_REG_WDAY ;
 size_t M41T80_REG_YEAR ;
 void* bcd2bin (unsigned char) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,unsigned char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int m41t80_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned char buf[8];
 int err, flags;

 flags = i2c_smbus_read_byte_data(client, M41T80_REG_FLAGS);
 if (flags < 0)
  return flags;

 if (flags & M41T80_FLAGS_OF) {
  dev_err(&client->dev, "Oscillator failure, data is invalid.\n");
  return -EINVAL;
 }

 err = i2c_smbus_read_i2c_block_data(client, M41T80_REG_SSEC,
         sizeof(buf), buf);
 if (err < 0) {
  dev_err(&client->dev, "Unable to read date\n");
  return err;
 }

 tm->tm_sec = bcd2bin(buf[M41T80_REG_SEC] & 0x7f);
 tm->tm_min = bcd2bin(buf[M41T80_REG_MIN] & 0x7f);
 tm->tm_hour = bcd2bin(buf[M41T80_REG_HOUR] & 0x3f);
 tm->tm_mday = bcd2bin(buf[M41T80_REG_DAY] & 0x3f);
 tm->tm_wday = buf[M41T80_REG_WDAY] & 0x07;
 tm->tm_mon = bcd2bin(buf[M41T80_REG_MON] & 0x1f) - 1;


 tm->tm_year = bcd2bin(buf[M41T80_REG_YEAR]) + 100;
 return 0;
}
