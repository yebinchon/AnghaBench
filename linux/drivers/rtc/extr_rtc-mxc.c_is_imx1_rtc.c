
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_plat_data {scalar_t__ devtype; } ;


 scalar_t__ IMX1_RTC ;

__attribute__((used)) static inline int is_imx1_rtc(struct rtc_plat_data *data)
{
 return data->devtype == IMX1_RTC;
}
