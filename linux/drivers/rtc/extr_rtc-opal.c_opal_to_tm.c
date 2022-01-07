
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; } ;


 int bcd2bin (int) ;

__attribute__((used)) static void opal_to_tm(u32 y_m_d, u64 h_m_s_ms, struct rtc_time *tm)
{
 tm->tm_year = ((bcd2bin(y_m_d >> 24) * 100) +
         bcd2bin((y_m_d >> 16) & 0xff)) - 1900;
 tm->tm_mon = bcd2bin((y_m_d >> 8) & 0xff) - 1;
 tm->tm_mday = bcd2bin(y_m_d & 0xff);
 tm->tm_hour = bcd2bin((h_m_s_ms >> 56) & 0xff);
 tm->tm_min = bcd2bin((h_m_s_ms >> 48) & 0xff);
 tm->tm_sec = bcd2bin((h_m_s_ms >> 40) & 0xff);

 tm->tm_wday = -1;
}
