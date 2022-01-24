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
typedef  int u8 ;
struct rx8010_data {int /*<<< orphan*/  client; } ;
struct rtc_time {int /*<<< orphan*/  tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  RX8010_FLAG ; 
 int RX8010_FLAG_VLF ; 
 size_t RX8010_HOUR ; 
 size_t RX8010_MDAY ; 
 size_t RX8010_MIN ; 
 size_t RX8010_MONTH ; 
 size_t RX8010_SEC ; 
 size_t RX8010_WDAY ; 
 size_t RX8010_YEAR ; 
 void* FUNC0 (int) ; 
 struct rx8010_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,int,int*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *dt)
{
	struct rx8010_data *rx8010 = FUNC1(dev);
	u8 date[7];
	int flagreg;
	int err;

	flagreg = FUNC4(rx8010->client, RX8010_FLAG);
	if (flagreg < 0)
		return flagreg;

	if (flagreg & RX8010_FLAG_VLF) {
		FUNC2(dev, "Frequency stop detected\n");
		return -EINVAL;
	}

	err = FUNC5(rx8010->client, RX8010_SEC,
					    7, date);
	if (err != 7)
		return err < 0 ? err : -EIO;

	dt->tm_sec = FUNC0(date[RX8010_SEC - RX8010_SEC] & 0x7f);
	dt->tm_min = FUNC0(date[RX8010_MIN - RX8010_SEC] & 0x7f);
	dt->tm_hour = FUNC0(date[RX8010_HOUR - RX8010_SEC] & 0x3f);
	dt->tm_mday = FUNC0(date[RX8010_MDAY - RX8010_SEC] & 0x3f);
	dt->tm_mon = FUNC0(date[RX8010_MONTH - RX8010_SEC] & 0x1f) - 1;
	dt->tm_year = FUNC0(date[RX8010_YEAR - RX8010_SEC]) + 100;
	dt->tm_wday = FUNC3(date[RX8010_WDAY - RX8010_SEC] & 0x7f);

	return 0;
}