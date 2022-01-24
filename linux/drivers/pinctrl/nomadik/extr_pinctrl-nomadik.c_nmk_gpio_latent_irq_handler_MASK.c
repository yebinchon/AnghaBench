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
struct nmk_gpio_chip {int /*<<< orphan*/  bank; int /*<<< orphan*/  (* get_latent_status ) (int /*<<< orphan*/ ) ;} ;
struct irq_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	struct gpio_chip *chip = FUNC2(desc);
	struct nmk_gpio_chip *nmk_chip = FUNC1(chip);
	u32 status = nmk_chip->get_latent_status(nmk_chip->bank);

	FUNC0(desc, status);
}