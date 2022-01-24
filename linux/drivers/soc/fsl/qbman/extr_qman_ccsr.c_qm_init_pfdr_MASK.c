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
typedef  int u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int EINVAL ; 
 int ENODEV ; 
 int MCR_INIT_PFDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  REG_MCR ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct device *dev, u32 pfdr_start, u32 num)
{
	u8 rslt = FUNC1(FUNC10(REG_MCR));

	FUNC0(pfdr_start && !(pfdr_start & 7) && !(num & 7) && num);
	/* Make sure the command interface is 'idle' */
	if (!FUNC3(rslt)) {
		FUNC8(dev, "QMAN_MCR isn't idle");
		FUNC7(1);
	}

	/* Write the MCR command params then the verb */
	FUNC11(FUNC6(0), pfdr_start);
	/*
	 * TODO: remove this - it's a workaround for a model bug that is
	 * corrected in more recent versions. We use the workaround until
	 * everyone has upgraded.
	 */
	FUNC11(FUNC6(1), pfdr_start + num - 16);
	FUNC9();
	FUNC11(REG_MCR, MCR_INIT_PFDR);
	/* Poll for the result */
	do {
		rslt = FUNC1(FUNC10(REG_MCR));
	} while (!FUNC3(rslt));
	if (FUNC5(rslt))
		return 0;
	if (FUNC2(rslt))
		return -EACCES;
	if (FUNC4(rslt))
		return -EINVAL;
	FUNC8(dev, "Unexpected result from MCR_INIT_PFDR: %02x\n", rslt);
	return -ENODEV;
}