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
typedef  int /*<<< orphan*/  u8 ;
struct ingenic_gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_PIN ; 
 unsigned int FUNC1 (struct ingenic_gpio_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct ingenic_gpio_chip *jzgc,
					  u8 offset)
{
	unsigned int val = FUNC1(jzgc, GPIO_PIN);

	return !!(val & FUNC0(offset));
}