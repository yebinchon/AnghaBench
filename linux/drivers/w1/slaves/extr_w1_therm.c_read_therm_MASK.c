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
typedef  scalar_t__ u8 ;
struct w1_slave {scalar_t__* family_data; struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  bus_mutex; } ;
struct therm_info {scalar_t__* rom; int verdict; scalar_t__ crc; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  W1_CONVERT_TEMP ; 
 int /*<<< orphan*/  W1_READ_PSUPPLY ; 
 int /*<<< orphan*/  W1_READ_SCRATCHPAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct w1_master*,unsigned int) ; 
 scalar_t__ FUNC10 (struct w1_master*) ; 
 int FUNC11 (struct w1_master*,scalar_t__*,int) ; 
 scalar_t__ FUNC12 (struct w1_slave*) ; 
 int w1_strong_pullup ; 
 int /*<<< orphan*/  FUNC13 (struct w1_master*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC14(struct device *device,
			  struct w1_slave *sl, struct therm_info *info)
{
	struct w1_master *dev = sl->master;
	u8 external_power;
	int ret, max_trying = 10;
	u8 *family_data = sl->family_data;

	if (!family_data) {
		ret = -ENODEV;
		goto error;
	}

	/* prevent the slave from going away in sleep */
	FUNC2(FUNC0(family_data));

	ret = FUNC6(&dev->bus_mutex);
	if (ret != 0)
		goto dec_refcnt;

	FUNC4(info->rom, 0, sizeof(info->rom));

	while (max_trying--) {

		info->verdict = 0;
		info->crc = 0;

		if (!FUNC12(sl)) {
			int count = 0;
			unsigned int tm = 750;
			unsigned long sleep_rem;

			FUNC13(dev, W1_READ_PSUPPLY);
			external_power = FUNC10(dev);

			if (FUNC12(sl))
				continue;

			/* 750ms strong pullup (or delay) after the convert */
			if (w1_strong_pullup == 2 ||
					(!external_power && w1_strong_pullup))
				FUNC9(dev, tm);

			FUNC13(dev, W1_CONVERT_TEMP);

			if (external_power) {
				FUNC7(&dev->bus_mutex);

				sleep_rem = FUNC5(tm);
				if (sleep_rem != 0) {
					ret = -EINTR;
					goto dec_refcnt;
				}

				ret = FUNC6(&dev->bus_mutex);
				if (ret != 0)
					goto dec_refcnt;
			} else if (!w1_strong_pullup) {
				sleep_rem = FUNC5(tm);
				if (sleep_rem != 0) {
					ret = -EINTR;
					goto mt_unlock;
				}
			}

			if (!FUNC12(sl)) {

				FUNC13(dev, W1_READ_SCRATCHPAD);
				count = FUNC11(dev, info->rom, 9);
				if (count != 9) {
					FUNC3(device, "w1_read_block() "
						"returned %u instead of 9.\n",
						count);
				}

				info->crc = FUNC8(info->rom, 8);

				if (info->rom[8] == info->crc)
					info->verdict = 1;
			}
		}

		if (info->verdict)
			break;
	}

mt_unlock:
	FUNC7(&dev->bus_mutex);
dec_refcnt:
	FUNC1(FUNC0(family_data));
error:
	return ret;
}