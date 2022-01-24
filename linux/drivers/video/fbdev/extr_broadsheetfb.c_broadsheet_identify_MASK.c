#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct device {int dummy; } ;
struct broadsheetfb_par {TYPE_1__* info; } ;
struct TYPE_2__ {struct device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_REG_PRC ; 
 int /*<<< orphan*/  BS_REG_REV ; 
 int FUNC0 (struct broadsheetfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static void FUNC3(struct broadsheetfb_par *par)
{
	u16 rev, prc;
	struct device *dev = par->info->device;

	rev = FUNC0(par, BS_REG_REV);
	prc = FUNC0(par, BS_REG_PRC);
	FUNC1(dev, "Broadsheet Rev 0x%x, Product Code 0x%x\n", rev, prc);

	if (prc != 0x0047)
		FUNC2(dev, "Unrecognized Broadsheet Product Code\n");
	if (rev != 0x0100)
		FUNC2(dev, "Unrecognized Broadsheet Revision\n");
}