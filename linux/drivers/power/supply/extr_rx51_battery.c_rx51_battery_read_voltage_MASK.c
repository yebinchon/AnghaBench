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
struct rx51_device_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  channel_vbat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rx51_device_info *di)
{
	int voltage = FUNC1(di->channel_vbat);

	if (voltage < 0) {
		FUNC0(di->dev, "Could not read ADC: %d\n", voltage);
		return voltage;
	}

	return 1000 * (10000 * voltage / 1705);
}