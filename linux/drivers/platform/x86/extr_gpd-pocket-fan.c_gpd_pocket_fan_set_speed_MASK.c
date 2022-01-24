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
struct gpd_pocket_fan_data {int last_speed; int /*<<< orphan*/  gpio1; int /*<<< orphan*/  gpio0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct gpd_pocket_fan_data *fan, int speed)
{
	if (speed == fan->last_speed)
		return;

	FUNC0(fan->gpio0, !!(speed & 1));
	FUNC0(fan->gpio1, !!(speed & 2));

	fan->last_speed = speed;
}