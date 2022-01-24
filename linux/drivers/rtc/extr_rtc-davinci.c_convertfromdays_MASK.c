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
typedef  int u16 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static int FUNC2(u16 days, struct rtc_time *tm)
{
	int tmp_days, year, mon;

	for (year = 2000;; year++) {
		tmp_days = FUNC1(1, 12, year);
		if (days >= tmp_days)
			days -= tmp_days;
		else {
			for (mon = 0;; mon++) {
				tmp_days = FUNC0(mon, year);
				if (days >= tmp_days) {
					days -= tmp_days;
				} else {
					tm->tm_year = year - 1900;
					tm->tm_mon = mon;
					tm->tm_mday = days + 1;
					break;
				}
			}
			break;
		}
	}
	return 0;
}