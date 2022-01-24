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
struct samsung_pin_bank {TYPE_1__* irq_domain; } ;
struct s3c24xx_eint_domain_data {struct s3c24xx_eint_data* eint_data; } ;
struct s3c24xx_eint_data {int* parents; } ;
struct irq_data {size_t hwirq; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_mask ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct s3c24xx_eint_domain_data* host_data; } ;

/* Variables and functions */
 struct samsung_pin_bank* FUNC0 (struct irq_data*) ; 
 struct irq_chip* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct samsung_pin_bank *bank = FUNC0(data);
	struct s3c24xx_eint_domain_data *ddata = bank->irq_domain->host_data;
	struct s3c24xx_eint_data *eint_data = ddata->eint_data;
	int parent_irq = eint_data->parents[data->hwirq];
	struct irq_chip *parent_chip = FUNC1(parent_irq);

	parent_chip->irq_mask(FUNC2(parent_irq));
}