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
typedef  int uint8_t ;
typedef  int u8 ;
struct w1_slave {int* family_data; struct w1_master* master; } ;
struct w1_master {int /*<<< orphan*/  bus_mutex; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  rom ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int W1_READ_SCRATCHPAD ; 
 int W1_WRITE_SCRATCHPAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w1_slave* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int*,int) ; 
 int FUNC10 (struct w1_master*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC12 (struct w1_master*,int) ; 

__attribute__((used)) static inline int FUNC13(struct device *device, int val)
{
	struct w1_slave *sl = FUNC3(device);
	struct w1_master *dev = sl->master;
	u8 rom[9], crc;
	int ret, max_trying = 10;
	u8 *family_data = sl->family_data;
	uint8_t precision_bits;
	uint8_t mask = 0x60;

	if (val > 12 || val < 9) {
		FUNC8("Unsupported precision\n");
		ret = -EINVAL;
		goto error;
	}

	if (!sl->family_data) {
		ret = -ENODEV;
		goto error;
	}

	/* prevent the slave from going away in sleep */
	FUNC2(FUNC0(family_data));

	ret = FUNC6(&dev->bus_mutex);
	if (ret != 0)
		goto dec_refcnt;

	FUNC5(rom, 0, sizeof(rom));

	/* translate precision to bitmask (see datasheet page 9) */
	switch (val) {
	case 9:
		precision_bits = 0x00;
		break;
	case 10:
		precision_bits = 0x20;
		break;
	case 11:
		precision_bits = 0x40;
		break;
	case 12:
	default:
		precision_bits = 0x60;
		break;
	}

	while (max_trying--) {
		crc = 0;

		if (!FUNC11(sl)) {
			int count = 0;

			/* read values to only alter precision bits */
			FUNC12(dev, W1_READ_SCRATCHPAD);
			count = FUNC10(dev, rom, 9);
			if (count != 9)
				FUNC4(device, "w1_read_block() returned %u instead of 9.\n",	count);

			crc = FUNC9(rom, 8);
			if (rom[8] == crc) {
				rom[4] = (rom[4] & ~mask) | (precision_bits & mask);

				if (!FUNC11(sl)) {
					FUNC12(dev, W1_WRITE_SCRATCHPAD);
					FUNC12(dev, rom[2]);
					FUNC12(dev, rom[3]);
					FUNC12(dev, rom[4]);

					break;
				}
			}
		}
	}

	FUNC7(&dev->bus_mutex);
dec_refcnt:
	FUNC1(FUNC0(family_data));
error:
	return ret;
}