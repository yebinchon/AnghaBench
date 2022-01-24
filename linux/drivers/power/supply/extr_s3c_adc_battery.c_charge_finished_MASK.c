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
struct s3c_adc_bat {TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_charge_finished; scalar_t__ gpio_inverted; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct s3c_adc_bat *bat)
{
	return bat->pdata->gpio_inverted ?
		!FUNC0(bat->pdata->gpio_charge_finished) :
		FUNC0(bat->pdata->gpio_charge_finished);
}