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
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc,
					  unsigned offset, int value)
{
	FUNC1(gc, offset, value);
	return FUNC0(gc->base + offset);
}