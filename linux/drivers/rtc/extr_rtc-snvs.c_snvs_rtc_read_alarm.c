
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;
struct rtc_wkalrm {int pending; int time; } ;
struct device {int dummy; } ;


 scalar_t__ SNVS_LPSR ;
 int SNVS_LPSR_LPTA ;
 scalar_t__ SNVS_LPTAR ;
 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int rtc_time64_to_tm (int,int *) ;

__attribute__((used)) static int snvs_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct snvs_rtc_data *data = dev_get_drvdata(dev);
 u32 lptar, lpsr;

 regmap_read(data->regmap, data->offset + SNVS_LPTAR, &lptar);
 rtc_time64_to_tm(lptar, &alrm->time);

 regmap_read(data->regmap, data->offset + SNVS_LPSR, &lpsr);
 alrm->pending = (lpsr & SNVS_LPSR_LPTA) ? 1 : 0;

 return 0;
}
