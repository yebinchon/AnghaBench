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
typedef  int /*<<< orphan*/  u32 ;
struct idt_ntb_dev {int /*<<< orphan*/  gasa_lock; scalar_t__ cfgspc; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 scalar_t__ IDT_NT_GASAADDR ; 
 scalar_t__ IDT_NT_GASADATA ; 
 int /*<<< orphan*/  IDT_REG_ALIGN ; 
 unsigned int const IDT_REG_SW_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC6(struct idt_ntb_dev *ndev, const unsigned int reg)
{
	unsigned long irqflags;
	u32 data;

	/*
	 * It's obvious bug to request a register exceeding the maximum possible
	 * value as well as to have it unaligned.
	 */
	if (FUNC1(reg > IDT_REG_SW_MAX || !FUNC0(reg, IDT_REG_ALIGN)))
		return ~0;

	/* Lock GASA registers operations */
	FUNC4(&ndev->gasa_lock, irqflags);
	/* Set the global register address */
	FUNC3((u32)reg, ndev->cfgspc + (ptrdiff_t)IDT_NT_GASAADDR);
	/* Get the data of the register (read ops acts as MMIO barrier) */
	data = FUNC2(ndev->cfgspc + (ptrdiff_t)IDT_NT_GASADATA);
	/* Unlock GASA registers operations */
	FUNC5(&ndev->gasa_lock, irqflags);

	return data;
}