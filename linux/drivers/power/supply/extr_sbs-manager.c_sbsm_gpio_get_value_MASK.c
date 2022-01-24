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
struct sbsm_data {int /*<<< orphan*/  client; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SBSM_CMD_BATSYSSTATE ; 
 struct sbsm_data* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int off)
{
	struct sbsm_data *data = FUNC1(gc);
	int ret;

	ret = FUNC2(data->client, SBSM_CMD_BATSYSSTATE);
	if (ret < 0)
		return ret;

	return ret & FUNC0(off);
}