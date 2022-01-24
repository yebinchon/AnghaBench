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
struct nsp_gpio {int /*<<< orphan*/  lock; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct nsp_gpio* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct nsp_gpio *chip = FUNC0(d);
	unsigned long flags;

	FUNC2(&chip->lock, flags);
	FUNC1(d, false);
	FUNC3(&chip->lock, flags);
}