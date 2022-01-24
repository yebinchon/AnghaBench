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
struct idt_ntb_dev {int part; int /*<<< orphan*/  mtbl_lock; } ;

/* Variables and functions */
 int IDT_NTCTL_CPEN ; 
 int IDT_NTGSIGNAL_SET ; 
 int IDT_NTMTBLDATA_VALID ; 
 int /*<<< orphan*/  IDT_NT_NTCTL ; 
 int /*<<< orphan*/  IDT_NT_NTGSIGNAL ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLADDR ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLDATA ; 
 int /*<<< orphan*/  IDT_NT_REQIDCAP ; 
 int /*<<< orphan*/  IDT_SW_SEGSIGSTS ; 
 int /*<<< orphan*/  NTMTBLDATA_PART ; 
 int /*<<< orphan*/  NTMTBLDATA_REQID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct idt_ntb_dev *ndev)
{
	u32 reqid, mtbldata = 0;
	unsigned long irqflags;

	/* Enable the ID protection and Completion TLPs translation */
	FUNC2(ndev, IDT_NT_NTCTL, IDT_NTCTL_CPEN);

	/* Retrieve the current Requester ID (Bus:Device:Function) */
	reqid = FUNC1(ndev, IDT_NT_REQIDCAP);

	/*
	 * Set the corresponding NT Mapping table entry of port partition index
	 * with the data to perform the Request ID translation
	 */
	mtbldata = FUNC0(NTMTBLDATA_REQID, 0, reqid) |
		   FUNC0(NTMTBLDATA_PART, 0, ndev->part) |
		   IDT_NTMTBLDATA_VALID;
	FUNC4(&ndev->mtbl_lock, irqflags);
	FUNC2(ndev, IDT_NT_NTMTBLADDR, ndev->part);
	FUNC2(ndev, IDT_NT_NTMTBLDATA, mtbldata);
	FUNC5(&ndev->mtbl_lock, irqflags);

	/* Notify the peers by setting and clearing the global signal bit */
	FUNC2(ndev, IDT_NT_NTGSIGNAL, IDT_NTGSIGNAL_SET);
	FUNC3(ndev, IDT_SW_SEGSIGSTS, (u32)1 << ndev->part);
}