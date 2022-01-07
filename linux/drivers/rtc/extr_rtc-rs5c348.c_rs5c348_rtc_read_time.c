
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int txbuf ;
struct spi_device {int dev; } ;
struct rtc_time {int tm_hour; void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_min; void* tm_sec; } ;
struct rs5c348_plat_data {int rtc_24h; } ;
struct device {int dummy; } ;
typedef int rxbuf ;


 int EINVAL ;
 int RS5C348_BIT_PM ;
 int RS5C348_BIT_VDET ;
 int RS5C348_BIT_XSTP ;
 int RS5C348_BIT_Y2K ;
 int RS5C348_CMD_MR (size_t) ;
 int RS5C348_CMD_R (int ) ;
 int RS5C348_DAY_MASK ;
 int RS5C348_HOURS_MASK ;
 int RS5C348_MINS_MASK ;
 int RS5C348_MONTH_MASK ;
 int RS5C348_REG_CTL2 ;
 size_t RS5C348_REG_DAY ;
 size_t RS5C348_REG_HOURS ;
 size_t RS5C348_REG_MINS ;
 size_t RS5C348_REG_MONTH ;
 size_t RS5C348_REG_SECS ;
 size_t RS5C348_REG_WDAY ;
 size_t RS5C348_REG_YEAR ;
 int RS5C348_SECS_MASK ;
 int RS5C348_WDAY_MASK ;
 void* bcd2bin (int) ;
 struct rs5c348_plat_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 int spi_w8r8 (struct spi_device*,int) ;
 int spi_write_then_read (struct spi_device*,int*,int,int*,int) ;
 struct spi_device* to_spi_device (struct device*) ;
 int udelay (int) ;

__attribute__((used)) static int
rs5c348_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct spi_device *spi = to_spi_device(dev);
 struct rs5c348_plat_data *pdata = dev_get_platdata(&spi->dev);
 u8 txbuf[5], rxbuf[7];
 int ret;

 ret = spi_w8r8(spi, RS5C348_CMD_R(RS5C348_REG_CTL2));
 if (ret < 0)
  return ret;
 if (ret & RS5C348_BIT_VDET)
  dev_warn(&spi->dev, "voltage-low detected.\n");
 if (ret & RS5C348_BIT_XSTP) {
  dev_warn(&spi->dev, "oscillator-stop detected.\n");
  return -EINVAL;
 }


 txbuf[0] = RS5C348_CMD_R(RS5C348_REG_CTL2);
 txbuf[1] = 0;
 txbuf[2] = RS5C348_CMD_R(RS5C348_REG_CTL2);
 txbuf[3] = 0;
 txbuf[4] = RS5C348_CMD_MR(RS5C348_REG_SECS);


 ret = spi_write_then_read(spi, txbuf, sizeof(txbuf),
      rxbuf, sizeof(rxbuf));
 udelay(62);
 if (ret < 0)
  return ret;

 tm->tm_sec = bcd2bin(rxbuf[RS5C348_REG_SECS] & RS5C348_SECS_MASK);
 tm->tm_min = bcd2bin(rxbuf[RS5C348_REG_MINS] & RS5C348_MINS_MASK);
 tm->tm_hour = bcd2bin(rxbuf[RS5C348_REG_HOURS] & RS5C348_HOURS_MASK);
 if (!pdata->rtc_24h) {
  if (rxbuf[RS5C348_REG_HOURS] & RS5C348_BIT_PM) {
   tm->tm_hour -= 20;
   tm->tm_hour %= 12;
   tm->tm_hour += 12;
  } else
   tm->tm_hour %= 12;
 }
 tm->tm_wday = bcd2bin(rxbuf[RS5C348_REG_WDAY] & RS5C348_WDAY_MASK);
 tm->tm_mday = bcd2bin(rxbuf[RS5C348_REG_DAY] & RS5C348_DAY_MASK);
 tm->tm_mon =
  bcd2bin(rxbuf[RS5C348_REG_MONTH] & RS5C348_MONTH_MASK) - 1;

 tm->tm_year = bcd2bin(rxbuf[RS5C348_REG_YEAR]) +
  ((rxbuf[RS5C348_REG_MONTH] & RS5C348_BIT_Y2K) ? 100 : 0);

 return 0;
}
