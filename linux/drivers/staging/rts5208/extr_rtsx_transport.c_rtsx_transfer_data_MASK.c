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
typedef  int /*<<< orphan*/  u8 ;
struct rtsx_chip {int need_reinit; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int EIO ; 
 int MS_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  RTSX_STAT_ABORT ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int SD_CARD ; 
 int XD_CARD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,void*,size_t,int,int) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,void*,int,int,int) ; 

int FUNC8(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
		       int use_sg, enum dma_data_direction dma_dir, int timeout)
{
	int err = 0;

	FUNC2(FUNC4(chip), "use_sg = %d\n", use_sg);

	/* don't transfer data during abort processing */
	if (FUNC3(chip, RTSX_STAT_ABORT))
		return -EIO;

	if (use_sg) {
		err = FUNC7(chip, card, buf,
						use_sg, dma_dir, timeout);
	} else {
		err = FUNC6(chip, card, buf, len, dma_dir, timeout);
	}

	if (err < 0) {
		if (FUNC1(chip)) {
			FUNC0(chip);
			chip->need_reinit = SD_CARD | MS_CARD | XD_CARD;
			FUNC5(chip, 1);
		}
	}

	return err;
}