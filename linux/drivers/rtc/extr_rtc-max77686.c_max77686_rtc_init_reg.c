
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max77686_rtc_info {int rtc_24hr_mode; int dev; TYPE_1__* drv_data; int rtc_regmap; } ;
struct TYPE_2__ {int * map; } ;


 int ARRAY_SIZE (int*) ;
 int BCD_EN_SHIFT ;
 int MAX77686_RTC_WRITE ;
 int MODEL24_SHIFT ;
 size_t REG_RTC_CONTROLM ;
 int dev_err (int ,char*,int) ;
 int max77686_rtc_update (struct max77686_rtc_info*,int ) ;
 int regmap_bulk_write (int ,int ,int*,int ) ;

__attribute__((used)) static int max77686_rtc_init_reg(struct max77686_rtc_info *info)
{
 u8 data[2];
 int ret;


 data[0] = (1 << BCD_EN_SHIFT) | (1 << MODEL24_SHIFT);
 data[1] = (0 << BCD_EN_SHIFT) | (1 << MODEL24_SHIFT);

 info->rtc_24hr_mode = 1;

 ret = regmap_bulk_write(info->rtc_regmap,
    info->drv_data->map[REG_RTC_CONTROLM],
    data, ARRAY_SIZE(data));
 if (ret < 0) {
  dev_err(info->dev, "Fail to write controlm reg(%d)\n", ret);
  return ret;
 }

 ret = max77686_rtc_update(info, MAX77686_RTC_WRITE);
 return ret;
}
