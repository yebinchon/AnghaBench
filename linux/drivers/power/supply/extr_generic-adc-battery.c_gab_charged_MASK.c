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
struct gab_platform_data {int jitter_delay; } ;
struct gab {int /*<<< orphan*/  bat_work; struct gab_platform_data* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int JITTER_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct gab *adc_bat = dev_id;
	struct gab_platform_data *pdata = adc_bat->pdata;
	int delay;

	delay = pdata->jitter_delay ? pdata->jitter_delay : JITTER_DEFAULT;
	FUNC1(&adc_bat->bat_work,
			FUNC0(delay));
	return IRQ_HANDLED;
}