#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ipi; } ;
struct irq_info {scalar_t__ type; TYPE_1__ u; } ;
typedef  enum ipi_vector { ____Placeholder_ipi_vector } ipi_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IRQT_IPI ; 
 struct irq_info* FUNC1 (unsigned int) ; 

__attribute__((used)) static enum ipi_vector FUNC2(unsigned irq)
{
	struct irq_info *info = FUNC1(irq);

	FUNC0(info == NULL);
	FUNC0(info->type != IRQT_IPI);

	return info->u.ipi;
}