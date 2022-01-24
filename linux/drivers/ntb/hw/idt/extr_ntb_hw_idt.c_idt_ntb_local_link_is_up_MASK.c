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
struct idt_ntb_dev {int /*<<< orphan*/  mtbl_lock; int /*<<< orphan*/  part; } ;

/* Variables and functions */
 int IDT_NTCTL_CPEN ; 
 int IDT_NTMTBLDATA_VALID ; 
 int /*<<< orphan*/  IDT_NT_NTCTL ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLADDR ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLDATA ; 
 int /*<<< orphan*/  IDT_NT_PCICMDSTS ; 
 int IDT_PCICMDSTS_BME ; 
 int FUNC0 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct idt_ntb_dev *ndev)
{
	unsigned long irqflags;
	u32 data;

	/* Read the local Bus Master Enable status */
	data = FUNC0(ndev, IDT_NT_PCICMDSTS);
	if (!(data & IDT_PCICMDSTS_BME))
		return false;

	/* Read the local Completion TLPs translation enable status */
	data = FUNC0(ndev, IDT_NT_NTCTL);
	if (!(data & IDT_NTCTL_CPEN))
		return false;

	/* Read Mapping table entry corresponding to the local partition */
	FUNC2(&ndev->mtbl_lock, irqflags);
	FUNC1(ndev, IDT_NT_NTMTBLADDR, ndev->part);
	data = FUNC0(ndev, IDT_NT_NTMTBLDATA);
	FUNC3(&ndev->mtbl_lock, irqflags);

	return !!(data & IDT_NTMTBLDATA_VALID);
}