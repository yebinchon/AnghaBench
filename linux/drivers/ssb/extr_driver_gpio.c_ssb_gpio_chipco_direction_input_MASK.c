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
struct ssb_bus {int /*<<< orphan*/  chipco; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ssb_bus* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip,
					   unsigned int gpio)
{
	struct ssb_bus *bus = FUNC0(chip);

	FUNC1(&bus->chipco, 1 << gpio, 0);
	return 0;
}