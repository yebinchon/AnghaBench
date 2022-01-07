
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time64_t ;
struct tm {int tm_year; int tm_mday; scalar_t__ tm_mon; int tm_sec; int tm_min; int tm_hour; } ;
struct TYPE_5__ {int yearH; int yearL; int day; scalar_t__ month; int second; int minute; int hour; } ;
struct TYPE_6__ {TYPE_1__ ffdc; } ;
struct TYPE_7__ {TYPE_2__ cmd; } ;
typedef TYPE_3__ ips_scb_t ;
typedef int ips_ha_t ;


 int METHOD_TRACE (char*,int) ;
 int time64_to_tm (int ,int ,struct tm*) ;

__attribute__((used)) static void
ips_fix_ffdc_time(ips_ha_t * ha, ips_scb_t * scb, time64_t current_time)
{
 struct tm tm;

 METHOD_TRACE("ips_fix_ffdc_time", 1);

 time64_to_tm(current_time, 0, &tm);

 scb->cmd.ffdc.hour = tm.tm_hour;
 scb->cmd.ffdc.minute = tm.tm_min;
 scb->cmd.ffdc.second = tm.tm_sec;
 scb->cmd.ffdc.yearH = (tm.tm_year + 1900) / 100;
 scb->cmd.ffdc.yearL = tm.tm_year % 100;
 scb->cmd.ffdc.month = tm.tm_mon + 1;
 scb->cmd.ffdc.day = tm.tm_mday;
}
