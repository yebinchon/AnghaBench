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
struct ltq_pinmux_info {int num_exin; unsigned int* exin; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct ltq_pinmux_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct ltq_pinmux_info *info = FUNC0(chip->parent);
	int i;

	for (i = 0; i < info->num_exin; i++)
		if (info->exin[i] == offset)
			return FUNC1(i);

	return -1;
}