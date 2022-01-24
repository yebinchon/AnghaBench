#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct zorro_dev {TYPE_2__ resource; } ;
struct gvp11_hostdata {TYPE_1__* regs; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {scalar_t__ CNTR; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct gvp11_hostdata* FUNC4 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC5 (struct zorro_dev*) ; 

__attribute__((used)) static void FUNC6(struct zorro_dev *z)
{
	struct Scsi_Host *instance = FUNC5(z);
	struct gvp11_hostdata *hdata = FUNC4(instance);

	hdata->regs->CNTR = 0;
	FUNC3(instance);
	FUNC0(IRQ_AMIGA_PORTS, instance);
	FUNC2(instance);
	FUNC1(z->resource.start, 256);
}