
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_leap_year (int) ;

__attribute__((used)) static inline int rtd119x_rtc_days_in_year(int year)
{
 return 365 + (is_leap_year(year) ? 1 : 0);
}
