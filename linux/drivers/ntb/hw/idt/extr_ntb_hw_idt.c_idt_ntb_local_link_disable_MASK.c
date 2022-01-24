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
 int IDT_NTGSIGNAL_SET ; 
 int /*<<< orphan*/  IDT_NT_NTCTL ; 
 int /*<<< orphan*/  IDT_NT_NTGSIGNAL ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLADDR ; 
 int /*<<< orphan*/  IDT_NT_NTMTBLDATA ; 
 int /*<<< orphan*/  IDT_SW_SEGSIGSTS ; 
 int /*<<< orphan*/  FUNC0 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct idt_ntb_dev *ndev)
{
	unsigned long irqflags;

	/* Disable Completion TLPs translation */
	FUNC0(ndev, IDT_NT_NTCTL, 0);

	/* Clear the corresponding NT Mapping table entry */
	FUNC2(&ndev->mtbl_lock, irqflags);
	FUNC0(ndev, IDT_NT_NTMTBLADDR, ndev->part);
	FUNC0(ndev, IDT_NT_NTMTBLDATA, 0);
	FUNC3(&ndev->mtbl_lock, irqflags);

	/* Notify the peers by setting and clearing the global signal bit */
	FUNC0(ndev, IDT_NT_NTGSIGNAL, IDT_NTGSIGNAL_SET);
	FUNC1(ndev, IDT_SW_SEGSIGSTS, (u32)1 << ndev->part);
}