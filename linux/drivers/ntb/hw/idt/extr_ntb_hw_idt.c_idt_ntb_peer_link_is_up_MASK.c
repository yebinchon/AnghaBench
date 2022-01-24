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
typedef  int u32 ;
struct idt_ntb_dev {int /*<<< orphan*/  mtbl_lock; TYPE_1__* peers; } ;
struct TYPE_4__ {int /*<<< orphan*/  ntctl; int /*<<< orphan*/  pcicmdsts; int /*<<< orphan*/  sts; } ;
struct TYPE_3__ {unsigned char port; int /*<<< orphan*/  part; } ;

/* Variables and functions */
 int IDT_NTCTL_CPEN ; 
 int IDT_NTMTBLDATA_VALID ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLADDR ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLDATA ; 
 int IDT_PCICMDSTS_BME ; 
 int IDT_SWPORTxSTS_LINKUP ; 
 int FUNC0 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 TYPE_2__* portdata_tbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct idt_ntb_dev *ndev, int pidx)
{
	unsigned long irqflags;
	unsigned char port;
	u32 data;

	/* Retrieve the device port number */
	port = ndev->peers[pidx].port;

	/* Check whether PCIe link is up */
	data = FUNC2(ndev, portdata_tbl[port].sts);
	if (!(data & IDT_SWPORTxSTS_LINKUP))
		return false;

	/* Check whether bus mastering is enabled on the peer port */
	data = FUNC2(ndev, portdata_tbl[port].pcicmdsts);
	if (!(data & IDT_PCICMDSTS_BME))
		return false;

	/* Check if Completion TLPs translation is enabled on the peer port */
	data = FUNC2(ndev, portdata_tbl[port].ntctl);
	if (!(data & IDT_NTCTL_CPEN))
		return false;

	/* Read Mapping table entry corresponding to the peer partition */
	FUNC3(&ndev->mtbl_lock, irqflags);
	FUNC1(ndev, IDT_NT_NTMTBLADDR, ndev->peers[pidx].part);
	data = FUNC0(ndev, IDT_NT_NTMTBLDATA);
	FUNC4(&ndev->mtbl_lock, irqflags);

	return !!(data & IDT_NTMTBLDATA_VALID);
}