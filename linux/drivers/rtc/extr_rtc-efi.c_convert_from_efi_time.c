
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_isdst; int tm_yday; int tm_wday; } ;
struct TYPE_5__ {int second; int minute; int hour; int day; int month; int year; int daylight; } ;
typedef TYPE_1__ efi_time_t ;




 int compute_wday (TYPE_1__*,int ) ;
 int compute_yday (TYPE_1__*) ;
 int memset (struct rtc_time*,int ,int) ;

__attribute__((used)) static bool
convert_from_efi_time(efi_time_t *eft, struct rtc_time *wtime)
{
 memset(wtime, 0, sizeof(*wtime));

 if (eft->second >= 60)
  return 0;
 wtime->tm_sec = eft->second;

 if (eft->minute >= 60)
  return 0;
 wtime->tm_min = eft->minute;

 if (eft->hour >= 24)
  return 0;
 wtime->tm_hour = eft->hour;

 if (!eft->day || eft->day > 31)
  return 0;
 wtime->tm_mday = eft->day;

 if (!eft->month || eft->month > 12)
  return 0;
 wtime->tm_mon = eft->month - 1;

 if (eft->year < 1900 || eft->year > 9999)
  return 0;
 wtime->tm_year = eft->year - 1900;


 wtime->tm_yday = compute_yday(eft);


 wtime->tm_wday = compute_wday(eft, wtime->tm_yday);

 switch (eft->daylight & 129) {
 case 129:
  wtime->tm_isdst = 1;
  break;
 case 128:
  wtime->tm_isdst = 0;
  break;
 default:
  wtime->tm_isdst = -1;
 }

 return 1;
}
