
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int year ;
struct rtc_time {int tm_year; } ;
struct rtc_mem {int nr; unsigned char* data; int loc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int CMOS_YEAR ;
 unsigned char CTRL_HOLD ;
 unsigned char CTRL_STOP ;
 int EIO ;
 int dev_warn (struct device*,char*,unsigned char,unsigned char) ;
 int pcf8583_get_ctrl (struct i2c_client*,unsigned char*) ;
 scalar_t__ pcf8583_get_datetime (struct i2c_client*,struct rtc_time*) ;
 scalar_t__ pcf8583_read_mem (struct i2c_client*,struct rtc_mem*) ;
 int pcf8583_set_ctrl (struct i2c_client*,unsigned char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int pcf8583_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned char ctrl, year[2];
 struct rtc_mem mem = {
  .loc = CMOS_YEAR,
  .nr = sizeof(year),
  .data = year
 };
 int real_year, year_offset, err;




 pcf8583_get_ctrl(client, &ctrl);
 if (ctrl & (CTRL_STOP | CTRL_HOLD)) {
  unsigned char new_ctrl = ctrl & ~(CTRL_STOP | CTRL_HOLD);

  dev_warn(dev, "resetting control %02x -> %02x\n",
   ctrl, new_ctrl);

  err = pcf8583_set_ctrl(client, &new_ctrl);
  if (err < 0)
   return err;
 }

 if (pcf8583_get_datetime(client, tm) ||
     pcf8583_read_mem(client, &mem))
  return -EIO;

 real_year = year[0];







 year_offset = tm->tm_year - (real_year & 3);
 if (year_offset < 0)



  year_offset += 4;

 tm->tm_year = (real_year + year_offset + year[1] * 100) - 1900;

 return 0;
}
