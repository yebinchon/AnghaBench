#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct pcf50633_time {void** time; } ;

/* Variables and functions */
 size_t PCF50633_TI_DAY ; 
 size_t PCF50633_TI_HOUR ; 
 size_t PCF50633_TI_MIN ; 
 size_t PCF50633_TI_MONTH ; 
 size_t PCF50633_TI_SEC ; 
 size_t PCF50633_TI_WKDAY ; 
 size_t PCF50633_TI_YEAR ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct pcf50633_time *pcf, struct rtc_time *rtc)
{
	pcf->time[PCF50633_TI_SEC] = FUNC0(rtc->tm_sec);
	pcf->time[PCF50633_TI_MIN] = FUNC0(rtc->tm_min);
	pcf->time[PCF50633_TI_HOUR] = FUNC0(rtc->tm_hour);
	pcf->time[PCF50633_TI_WKDAY] = FUNC0(rtc->tm_wday);
	pcf->time[PCF50633_TI_DAY] = FUNC0(rtc->tm_mday);
	pcf->time[PCF50633_TI_MONTH] = FUNC0(rtc->tm_mon + 1);
	pcf->time[PCF50633_TI_YEAR] = FUNC0(rtc->tm_year % 100);
}