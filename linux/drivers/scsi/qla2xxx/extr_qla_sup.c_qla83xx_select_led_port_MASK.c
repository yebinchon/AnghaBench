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
typedef  int /*<<< orphan*/  uint32_t ;
struct qla_hw_data {scalar_t__ port_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  QLA83XX_LED_PORT0 ; 
 int /*<<< orphan*/  QLA83XX_LED_PORT1 ; 

__attribute__((used)) static uint32_t
FUNC3(struct qla_hw_data *ha)
{
	uint32_t led_select_value = 0;

	if (!FUNC2(ha) && !FUNC0(ha) && !FUNC1(ha))
		goto out;

	if (ha->port_no == 0)
		led_select_value = QLA83XX_LED_PORT0;
	else
		led_select_value = QLA83XX_LED_PORT1;

out:
	return led_select_value;
}