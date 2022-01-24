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
typedef  int u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct ufx_data*,int,int*) ; 
 int FUNC2 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ufx_data *dev, bool wait)
{
	u32 dc_ctrl, dc_sts;
	int i;

	int status = FUNC1(dev, 0x2004, &dc_sts);
	FUNC0(status, "ufx_unblank error reading 0x2004");

	status = FUNC1(dev, 0x2000, &dc_ctrl);
	FUNC0(status, "ufx_unblank error reading 0x2000");

	/* return success if display is already unblanked */
	if (((dc_sts & 0x00000100) == 0) || ((dc_ctrl & 0x00000100) == 0))
		return 0;

	/* request the DC to unblank the display */
	dc_ctrl &= ~0x00000100;
	status = FUNC2(dev, 0x2000, dc_ctrl);
	FUNC0(status, "ufx_unblank error writing 0x2000");

	/* return success immediately if we don't have to wait */
	if (!wait)
		return 0;

	for (i = 0; i < 250; i++) {
		status = FUNC1(dev, 0x2004, &dc_sts);
		FUNC0(status, "ufx_unblank error reading 0x2004");

		if ((dc_sts & 0x00000100) == 0)
			return 0;
	}

	/* timed out waiting for display to unblank */
	return -EIO;
}