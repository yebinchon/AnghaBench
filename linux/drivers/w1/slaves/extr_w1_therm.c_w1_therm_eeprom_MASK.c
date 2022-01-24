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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rom ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  W1_COPY_SCRATCHPAD ; 
 int /*<<< orphan*/  W1_READ_PSUPPLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w1_slave* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct w1_master*,unsigned int) ; 
 scalar_t__ FUNC9 (struct w1_master*) ; 
 scalar_t__ FUNC10 (struct w1_slave*) ; 
 int w1_strong_pullup ; 
 int /*<<< orphan*/  FUNC11 (struct w1_master*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC12(struct device *device)
{
	struct w1_slave *sl = FUNC3(device);
	struct w1_master *dev = sl->master;
	u8 rom[9], external_power;
	int ret, max_trying = 10;
	u8 *family_data = sl->family_data;

	if (!sl->family_data) {
		ret = -ENODEV;
		goto error;
	}

	/* prevent the slave from going away in sleep */
	FUNC2(FUNC0(family_data));

	ret = FUNC6(&dev->bus_mutex);
	if (ret != 0)
		goto dec_refcnt;

	FUNC4(rom, 0, sizeof(rom));

	while (max_trying--) {
		if (!FUNC10(sl)) {
			unsigned int tm = 10;
			unsigned long sleep_rem;

			/* check if in parasite mode */
			FUNC11(dev, W1_READ_PSUPPLY);
			external_power = FUNC9(dev);

			if (FUNC10(sl))
				continue;

			/* 10ms strong pullup/delay after the copy command */
			if (w1_strong_pullup == 2 ||
			    (!external_power && w1_strong_pullup))
				FUNC8(dev, tm);

			FUNC11(dev, W1_COPY_SCRATCHPAD);

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

			break;
		}
	}

mt_unlock:
	FUNC7(&dev->bus_mutex);
dec_refcnt:
	FUNC1(FUNC0(family_data));
error:
	return ret;
}