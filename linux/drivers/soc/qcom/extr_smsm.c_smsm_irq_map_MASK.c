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
struct smsm_entry {int dummy; } ;
struct irq_domain {struct smsm_entry* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct smsm_entry*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  smsm_irq_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d,
			unsigned int irq,
			irq_hw_number_t hw)
{
	struct smsm_entry *entry = d->host_data;

	FUNC0(irq, &smsm_irq_chip, handle_level_irq);
	FUNC1(irq, entry);
	FUNC2(irq, 1);

	return 0;
}