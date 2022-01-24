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
struct pm860x_battery_info {int present; int /*<<< orphan*/  lock; int /*<<< orphan*/  temp_type; int /*<<< orphan*/  i2c; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PM8607_STATUS_2 ; 
 int /*<<< orphan*/  PM860X_TEMP_TBAT ; 
 int /*<<< orphan*/  PM860X_TEMP_TINT ; 
 int STATUS2_BAT ; 
 int /*<<< orphan*/  ccnt_data ; 
 int /*<<< orphan*/  FUNC0 (struct pm860x_battery_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct pm860x_battery_info *info = data;
	int ret;

	FUNC1(&info->lock);
	ret = FUNC3(info->i2c, PM8607_STATUS_2);
	if (ret & STATUS2_BAT) {
		info->present = 1;
		info->temp_type = PM860X_TEMP_TBAT;
	} else {
		info->present = 0;
		info->temp_type = PM860X_TEMP_TINT;
	}
	FUNC2(&info->lock);
	/* clear ccnt since battery is attached or dettached */
	FUNC0(info, &ccnt_data);
	return IRQ_HANDLED;
}