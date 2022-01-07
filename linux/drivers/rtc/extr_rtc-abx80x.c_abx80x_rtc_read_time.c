
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned char tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef int buf ;


 int ABX8XX_OSS_OF ;
 size_t ABX8XX_REG_DA ;
 size_t ABX8XX_REG_HR ;
 int ABX8XX_REG_HTH ;
 size_t ABX8XX_REG_MN ;
 size_t ABX8XX_REG_MO ;
 int ABX8XX_REG_OSS ;
 size_t ABX8XX_REG_SC ;
 size_t ABX8XX_REG_WD ;
 size_t ABX8XX_REG_YR ;
 int EINVAL ;
 int EIO ;
 int abx80x_is_rc_mode (struct i2c_client*) ;
 void* bcd2bin (unsigned char) ;
 int dev_err (struct device*,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,unsigned char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int abx80x_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned char buf[8];
 int err, flags, rc_mode = 0;


 rc_mode = abx80x_is_rc_mode(client);
 if (rc_mode < 0)
  return rc_mode;

 if (!rc_mode) {
  flags = i2c_smbus_read_byte_data(client, ABX8XX_REG_OSS);
  if (flags < 0)
   return flags;

  if (flags & ABX8XX_OSS_OF) {
   dev_err(dev, "Oscillator failure, data is invalid.\n");
   return -EINVAL;
  }
 }

 err = i2c_smbus_read_i2c_block_data(client, ABX8XX_REG_HTH,
         sizeof(buf), buf);
 if (err < 0) {
  dev_err(&client->dev, "Unable to read date\n");
  return -EIO;
 }

 tm->tm_sec = bcd2bin(buf[ABX8XX_REG_SC] & 0x7F);
 tm->tm_min = bcd2bin(buf[ABX8XX_REG_MN] & 0x7F);
 tm->tm_hour = bcd2bin(buf[ABX8XX_REG_HR] & 0x3F);
 tm->tm_wday = buf[ABX8XX_REG_WD] & 0x7;
 tm->tm_mday = bcd2bin(buf[ABX8XX_REG_DA] & 0x3F);
 tm->tm_mon = bcd2bin(buf[ABX8XX_REG_MO] & 0x1F) - 1;
 tm->tm_year = bcd2bin(buf[ABX8XX_REG_YR]) + 100;

 return 0;
}
