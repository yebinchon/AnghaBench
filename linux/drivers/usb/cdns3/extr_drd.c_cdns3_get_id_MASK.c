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
struct cdns3 {int /*<<< orphan*/  dev; TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  sts; } ;

/* Variables and functions */
 int OTGSTS_ID_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct cdns3 *cdns)
{
	int id;

	id = FUNC1(&cdns->otg_regs->sts) & OTGSTS_ID_VALUE;
	FUNC0(cdns->dev, "OTG ID: %d", id);

	return id;
}