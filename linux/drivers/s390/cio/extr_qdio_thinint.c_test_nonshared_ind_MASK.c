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
struct qdio_irq {scalar_t__* dsci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qdio_irq*) ; 
 scalar_t__ FUNC1 (struct qdio_irq*) ; 

int FUNC2(struct qdio_irq *irq_ptr)
{
	if (!FUNC0(irq_ptr))
		return 0;
	if (FUNC1(irq_ptr))
		return 0;
	if (*irq_ptr->dsci)
		return 1;
	else
		return 0;
}