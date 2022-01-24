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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct pcf50633_time {int /*<<< orphan*/ * time; } ;

/* Variables and functions */
 size_t PCF50633_TI_DAY ; 
 size_t PCF50633_TI_HOUR ; 
 size_t PCF50633_TI_MIN ; 
 size_t PCF50633_TI_MONTH ; 
 size_t PCF50633_TI_SEC ; 
 size_t PCF50633_TI_WKDAY ; 
 size_t PCF50633_TI_YEAR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rtc_time *rtc, struct pcf50633_time *pcf)
{
	rtc->tm_sec = FUNC0(pcf->time[PCF50633_TI_SEC]);
	rtc->tm_min = FUNC0(pcf->time[PCF50633_TI_MIN]);
	rtc->tm_hour = FUNC0(pcf->time[PCF50633_TI_HOUR]);
	rtc->tm_wday = FUNC0(pcf->time[PCF50633_TI_WKDAY]);
	rtc->tm_mday = FUNC0(pcf->time[PCF50633_TI_DAY]);
	rtc->tm_mon = FUNC0(pcf->time[PCF50633_TI_MONTH]) - 1;
	rtc->tm_year = FUNC0(pcf->time[PCF50633_TI_YEAR]) + 100;
}