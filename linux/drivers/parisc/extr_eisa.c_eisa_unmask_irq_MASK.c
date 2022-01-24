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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  eisa_irq_lock ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int master_mask ; 
 int slave_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	unsigned int irq = d->irq;
	unsigned long flags;
	FUNC0("enable irq %d\n", irq);

	FUNC3(&eisa_irq_lock, flags);
        if (irq & 8) {
		slave_mask &= ~(1 << (irq&7));
		FUNC2(slave_mask, 0xa1);
	} else {
		master_mask &= ~(1 << (irq&7));
		FUNC2(master_mask, 0x21);
	}
	FUNC4(&eisa_irq_lock, flags);
	FUNC0("pic0 mask %02x\n", FUNC1(0x21));
	FUNC0("pic1 mask %02x\n", FUNC1(0xa1));
}