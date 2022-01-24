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
typedef  int uint32_t ;
struct jz4740_rtc {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  JZ_REG_RTC_CTRL ; 
 int JZ_RTC_CTRL_WRDY ; 
 int FUNC0 (struct jz4740_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct jz4740_rtc *rtc)
{
	uint32_t ctrl;
	int timeout = 10000;

	do {
		ctrl = FUNC0(rtc, JZ_REG_RTC_CTRL);
	} while (!(ctrl & JZ_RTC_CTRL_WRDY) && --timeout);

	return timeout ? 0 : -EIO;
}