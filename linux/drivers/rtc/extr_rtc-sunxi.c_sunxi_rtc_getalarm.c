
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_rtc_dev {scalar_t__ base; TYPE_1__* data_year; } ;
struct rtc_time {int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int mask; } ;


 scalar_t__ SUNXI_ALRM_DHMS ;
 int SUNXI_ALRM_EN_CNT_EN ;
 int SUNXI_ALRM_GET_HOUR_VALUE (int) ;
 int SUNXI_ALRM_GET_MIN_VALUE (int) ;
 int SUNXI_ALRM_GET_SEC_VALUE (int) ;
 scalar_t__ SUNXI_ALRM_IRQ_EN ;
 int SUNXI_DATE_GET_DAY_VALUE (int) ;
 int SUNXI_DATE_GET_MON_VALUE (int) ;
 int SUNXI_DATE_GET_YEAR_VALUE (int,int ) ;
 scalar_t__ SUNXI_RTC_YMD ;
 scalar_t__ SUNXI_YEAR_OFF (TYPE_1__*) ;
 struct sunxi_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int sunxi_rtc_getalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct sunxi_rtc_dev *chip = dev_get_drvdata(dev);
 struct rtc_time *alrm_tm = &wkalrm->time;
 u32 alrm;
 u32 alrm_en;
 u32 date;

 alrm = readl(chip->base + SUNXI_ALRM_DHMS);
 date = readl(chip->base + SUNXI_RTC_YMD);

 alrm_tm->tm_sec = SUNXI_ALRM_GET_SEC_VALUE(alrm);
 alrm_tm->tm_min = SUNXI_ALRM_GET_MIN_VALUE(alrm);
 alrm_tm->tm_hour = SUNXI_ALRM_GET_HOUR_VALUE(alrm);

 alrm_tm->tm_mday = SUNXI_DATE_GET_DAY_VALUE(date);
 alrm_tm->tm_mon = SUNXI_DATE_GET_MON_VALUE(date);
 alrm_tm->tm_year = SUNXI_DATE_GET_YEAR_VALUE(date,
   chip->data_year->mask);

 alrm_tm->tm_mon -= 1;





 alrm_tm->tm_year += SUNXI_YEAR_OFF(chip->data_year);

 alrm_en = readl(chip->base + SUNXI_ALRM_IRQ_EN);
 if (alrm_en & SUNXI_ALRM_EN_CNT_EN)
  wkalrm->enabled = 1;

 return 0;
}
