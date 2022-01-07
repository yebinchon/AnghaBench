
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx8010_data {int client; } ;
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int RX8010_FLAG ;
 int RX8010_FLAG_VLF ;
 size_t RX8010_HOUR ;
 size_t RX8010_MDAY ;
 size_t RX8010_MIN ;
 size_t RX8010_MONTH ;
 size_t RX8010_SEC ;
 size_t RX8010_WDAY ;
 size_t RX8010_YEAR ;
 void* bcd2bin (int) ;
 struct rx8010_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int ffs (int) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_i2c_block_data (int ,size_t,int,int*) ;

__attribute__((used)) static int rx8010_get_time(struct device *dev, struct rtc_time *dt)
{
 struct rx8010_data *rx8010 = dev_get_drvdata(dev);
 u8 date[7];
 int flagreg;
 int err;

 flagreg = i2c_smbus_read_byte_data(rx8010->client, RX8010_FLAG);
 if (flagreg < 0)
  return flagreg;

 if (flagreg & RX8010_FLAG_VLF) {
  dev_warn(dev, "Frequency stop detected\n");
  return -EINVAL;
 }

 err = i2c_smbus_read_i2c_block_data(rx8010->client, RX8010_SEC,
         7, date);
 if (err != 7)
  return err < 0 ? err : -EIO;

 dt->tm_sec = bcd2bin(date[RX8010_SEC - RX8010_SEC] & 0x7f);
 dt->tm_min = bcd2bin(date[RX8010_MIN - RX8010_SEC] & 0x7f);
 dt->tm_hour = bcd2bin(date[RX8010_HOUR - RX8010_SEC] & 0x3f);
 dt->tm_mday = bcd2bin(date[RX8010_MDAY - RX8010_SEC] & 0x3f);
 dt->tm_mon = bcd2bin(date[RX8010_MONTH - RX8010_SEC] & 0x1f) - 1;
 dt->tm_year = bcd2bin(date[RX8010_YEAR - RX8010_SEC]) + 100;
 dt->tm_wday = ffs(date[RX8010_WDAY - RX8010_SEC] & 0x7f);

 return 0;
}
