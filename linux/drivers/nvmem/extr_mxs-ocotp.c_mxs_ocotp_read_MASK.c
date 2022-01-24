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
typedef  int /*<<< orphan*/  u32 ;
struct mxs_ocotp {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_OCOTP_CTRL_ERROR ; 
 int /*<<< orphan*/  BM_OCOTP_CTRL_RD_BANK_OPEN ; 
 unsigned int OCOTP_DATA_OFFSET ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mxs_ocotp*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(void *context, unsigned int offset,
			  void *val, size_t bytes)
{
	struct mxs_ocotp *otp = context;
	u32 *buf = val;
	int ret;

	ret = FUNC1(otp->clk);
	if (ret)
		return ret;

	FUNC5(BM_OCOTP_CTRL_ERROR, otp->base + STMP_OFFSET_REG_CLR);

	ret = FUNC2(otp);
	if (ret)
		goto disable_clk;

	/* open OCOTP banks for read */
	FUNC5(BM_OCOTP_CTRL_RD_BANK_OPEN, otp->base + STMP_OFFSET_REG_SET);

	/* approximately wait 33 hclk cycles */
	FUNC4(1);

	ret = FUNC2(otp);
	if (ret)
		goto close_banks;

	while (bytes) {
		if ((offset < OCOTP_DATA_OFFSET) || (offset % 16)) {
			/* fill up non-data register */
			*buf++ = 0;
		} else {
			*buf++ = FUNC3(otp->base + offset);
		}

		bytes -= 4;
		offset += 4;
	}

close_banks:
	/* close banks for power saving */
	FUNC5(BM_OCOTP_CTRL_RD_BANK_OPEN, otp->base + STMP_OFFSET_REG_CLR);

disable_clk:
	FUNC0(otp->clk);

	return ret;
}