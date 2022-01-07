
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int time64_t ;
struct timespec64 {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int __le16 ;
struct TYPE_4__ {int Day; int Month; int Year; } ;
struct TYPE_3__ {int TwoSeconds; int Minutes; int Hours; } ;
typedef TYPE_1__ SMB_TIME ;
typedef TYPE_2__ SMB_DATE ;


 int FYI ;
 int VFS ;
 int cifs_dbg (int ,char*,int,...) ;
 int clamp (int,int,int) ;
 int le16_to_cpu (int ) ;
 int* total_days_of_prev_months ;

struct timespec64 cnvrtDosUnixTm(__le16 le_date, __le16 le_time, int offset)
{
 struct timespec64 ts;
 time64_t sec, days;
 int min, day, month, year;
 u16 date = le16_to_cpu(le_date);
 u16 time = le16_to_cpu(le_time);
 SMB_TIME *st = (SMB_TIME *)&time;
 SMB_DATE *sd = (SMB_DATE *)&date;

 cifs_dbg(FYI, "date %d time %d\n", date, time);

 sec = 2 * st->TwoSeconds;
 min = st->Minutes;
 if ((sec > 59) || (min > 59))
  cifs_dbg(VFS, "illegal time min %d sec %lld\n", min, sec);
 sec += (min * 60);
 sec += 60 * 60 * st->Hours;
 if (st->Hours > 24)
  cifs_dbg(VFS, "illegal hours %d\n", st->Hours);
 day = sd->Day;
 month = sd->Month;
 if (day < 1 || day > 31 || month < 1 || month > 12) {
  cifs_dbg(VFS, "illegal date, month %d day: %d\n", month, day);
  day = clamp(day, 1, 31);
  month = clamp(month, 1, 12);
 }
 month -= 1;
 days = day + total_days_of_prev_months[month];
 days += 3652;
 year = sd->Year;
 days += year * 365;
 days += (year/4);






 if (year >= 120)
  days = days - 1;


 if (year != 120)
  days -= ((year & 0x03) == 0) && (month < 2 ? 1 : 0);
 sec += 24 * 60 * 60 * days;

 ts.tv_sec = sec + offset;



 ts.tv_nsec = 0;
 return ts;
}
