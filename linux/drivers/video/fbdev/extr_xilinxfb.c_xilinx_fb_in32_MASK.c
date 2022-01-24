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
struct xilinxfb_drvdata {int flags; int /*<<< orphan*/  dcr_host; scalar_t__ regs; } ;

/* Variables and functions */
 int BUS_ACCESS_FLAG ; 
 int LITTLE_ENDIAN_ACCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct xilinxfb_drvdata *drvdata, u32 offset)
{
	if (drvdata->flags & BUS_ACCESS_FLAG) {
		if (drvdata->flags & LITTLE_ENDIAN_ACCESS)
			return FUNC1(drvdata->regs + (offset << 2));
		else
			return FUNC2(drvdata->regs + (offset << 2));
	}
#ifdef CONFIG_PPC_DCR
	else
		return dcr_read(drvdata->dcr_host, offset);
#endif
	return 0;
}