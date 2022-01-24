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

/* Variables and functions */
 int PWRDWN_SEQ_POWERDOWN_PLL ; 
 int /*<<< orphan*/  SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK ; 
 int SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	/*
	 * S3 Entry Sequence
	 * -----------------
	 * Step 1: SHIMPHY_ADDR_CNTL_0_DDR_PAD_CNTRL [ S3_PWRDWN_SEQ ] = 3
	 * Step 2: MEMC_DDR_0_WARM_BOOT [ WARM_BOOT ] = 1
	 */
	FUNC1((PWRDWN_SEQ_POWERDOWN_PLL <<
		    SHIMPHY_PAD_S3_PWRDWN_SEQ_SHIFT),
		    ~SHIMPHY_PAD_S3_PWRDWN_SEQ_MASK);

	FUNC0(true);
}