
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;


 void* bin2bcd (void*) ;

__attribute__((used)) static void tm2bcd(struct rtc_time *tm)
{
 tm->tm_sec = bin2bcd(tm->tm_sec);
 tm->tm_min = bin2bcd(tm->tm_min);
 tm->tm_hour = bin2bcd(tm->tm_hour);
 tm->tm_mday = bin2bcd(tm->tm_mday);

 tm->tm_mon = bin2bcd(tm->tm_mon + 1);
 tm->tm_year = bin2bcd(tm->tm_year - 100);
}
