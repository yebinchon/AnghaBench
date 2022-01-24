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
struct lcd_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  devm_lcd_device_match ; 
 int /*<<< orphan*/  devm_lcd_device_release ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lcd_device*) ; 

void FUNC2(struct device *dev, struct lcd_device *ld)
{
	int rc;

	rc = FUNC1(dev, devm_lcd_device_release,
				devm_lcd_device_match, ld);
	FUNC0(rc);
}