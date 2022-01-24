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
struct irq_info {scalar_t__ type; unsigned int irq; unsigned int evtchn; unsigned short cpu; } ;
typedef  enum xen_irq_type { ____Placeholder_xen_irq_type } xen_irq_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IRQT_UNBOUND ; 
 int IRQ_NOAUTOEN ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct irq_info*) ; 

__attribute__((used)) static int FUNC4(struct irq_info *info,
				     unsigned irq,
				     enum xen_irq_type type,
				     unsigned evtchn,
				     unsigned short cpu)
{
	int ret;

	FUNC0(info->type != IRQT_UNBOUND && info->type != type);

	info->type = type;
	info->irq = irq;
	info->evtchn = evtchn;
	info->cpu = cpu;

	ret = FUNC2(evtchn, irq);
	if (ret < 0)
		return ret;

	FUNC1(irq, IRQ_NOREQUEST|IRQ_NOAUTOEN);

	return FUNC3(info);
}