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
typedef  int u64 ;
typedef  int u32 ;
struct idt_ntb_dev {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct idt_ntb_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC4(struct idt_ntb_dev *ndev, unsigned int reg,
				   spinlock_t *reg_lock,
				   u64 valid_mask, u64 set_bits)
{
	unsigned long irqflags;
	u32 data;

	if (set_bits & ~(u64)valid_mask)
		return -EINVAL;

	/* Lock access to the register unless the change is written back */
	FUNC2(reg_lock, irqflags);
	data = FUNC0(ndev, reg) | (u32)set_bits;
	FUNC1(ndev, reg, data);
	/* Unlock the register */
	FUNC3(reg_lock, irqflags);

	return 0;
}