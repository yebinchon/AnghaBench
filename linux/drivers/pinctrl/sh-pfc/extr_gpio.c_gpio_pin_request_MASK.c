#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_pfc {TYPE_2__* info; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {scalar_t__ enum_id; } ;

/* Variables and functions */
 int EINVAL ; 
 struct sh_pfc* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct sh_pfc*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct sh_pfc *pfc = FUNC0(gc);
	int idx = FUNC2(pfc, offset);

	if (idx < 0 || pfc->info->pins[idx].enum_id == 0)
		return -EINVAL;

	return FUNC1(offset);
}