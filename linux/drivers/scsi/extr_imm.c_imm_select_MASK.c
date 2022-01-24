#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned short base; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int IMM_SELECT_TMO ; 
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,int) ; 

__attribute__((used)) static int FUNC4(imm_struct *dev, int target)
{
	int k;
	unsigned short ppb = dev->base;

	/*
	 * Firstly we want to make sure there is nothing
	 * holding onto the SCSI bus.
	 */
	FUNC2(ppb, 0xc);

	k = IMM_SELECT_TMO;
	do {
		k--;
	} while ((FUNC0(ppb) & 0x08) && (k));

	if (!k)
		return 0;

	/*
	 * Now assert the SCSI ID (HOST and TARGET) on the data bus
	 */
	FUNC2(ppb, 0x4);
	FUNC3(ppb, 0x80 | (1 << target));
	FUNC1(1);

	/*
	 * Deassert SELIN first followed by STROBE
	 */
	FUNC2(ppb, 0xc);
	FUNC2(ppb, 0xd);

	/*
	 * ACK should drop low while SELIN is deasserted.
	 * FAULT should drop low when the SCSI device latches the bus.
	 */
	k = IMM_SELECT_TMO;
	do {
		k--;
	}
	while (!(FUNC0(ppb) & 0x08) && (k));

	/*
	 * Place the interface back into a sane state (status mode)
	 */
	FUNC2(ppb, 0xc);
	return (k) ? 1 : 0;
}