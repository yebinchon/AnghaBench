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
struct spi_device {unsigned int max_speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSRCON0 ; 
 int BUSRCON0_AGEN_SERIAL_FLASH ; 
 int BUSRCON0_PORTW_8_BIT_MUX ; 
 int /*<<< orphan*/  BUSWCON0 ; 
 int BUSWCON0_AGEN_SERIAL_FLASH ; 
 unsigned int CLOCK_100M ; 
 unsigned int CLOCK_50M ; 
 int /*<<< orphan*/  EBUCC ; 
 int /*<<< orphan*/  EBUCC_EBUDIV_SELF100 ; 
 int /*<<< orphan*/  SFCON ; 
 unsigned int SFCON_DEV_SIZE_A23_0 ; 
 int SFCON_DEV_SIZE_MASK ; 
 int /*<<< orphan*/  SFIO ; 
 int SFIO_UNUSED_WD_MASK ; 
 int /*<<< orphan*/  SFTIME ; 
 int SFTIME_SCKF_POS_MASK ; 
 int SFTIME_SCKR_POS_MASK ; 
 unsigned int SFTIME_SCKR_POS_OFFSET ; 
 int SFTIME_SCK_PER_MASK ; 
 int SFTIME_SCK_PER_OFFSET ; 
 int /*<<< orphan*/  ebu_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	unsigned int i;
	unsigned long flags;

	FUNC3(&ebu_lock, flags);

	if (spi->max_speed_hz >= CLOCK_100M) {
		/* set EBU clock to 100 MHz */
		FUNC2(0, EBUCC_EBUDIV_SELF100, EBUCC);
		i = 1; /* divider */
	} else {
		/* set EBU clock to 50 MHz */
		FUNC2(EBUCC_EBUDIV_SELF100, 0, EBUCC);

		/* search for suitable divider */
		for (i = 1; i < 7; i++) {
			if (CLOCK_50M / i <= spi->max_speed_hz)
				break;
		}
	}

	/* setup period of serial clock */
	FUNC1(SFTIME_SCKF_POS_MASK
		     | SFTIME_SCKR_POS_MASK
		     | SFTIME_SCK_PER_MASK,
		     (i << SFTIME_SCKR_POS_OFFSET)
		     | (i << (SFTIME_SCK_PER_OFFSET + 1)),
		     SFTIME);

	/*
	 * set some bits of unused_wd, to not trigger HOLD/WP
	 * signals on non QUAD flashes
	 */
	FUNC0((SFIO_UNUSED_WD_MASK & (0x8 | 0x4)), SFIO);

	FUNC0(BUSRCON0_AGEN_SERIAL_FLASH | BUSRCON0_PORTW_8_BIT_MUX,
			BUSRCON0);
	FUNC0(BUSWCON0_AGEN_SERIAL_FLASH, BUSWCON0);
	/* set address wrap around to maximum for 24-bit addresses */
	FUNC1(SFCON_DEV_SIZE_MASK, SFCON_DEV_SIZE_A23_0, SFCON);

	FUNC4(&ebu_lock, flags);

	return 0;
}