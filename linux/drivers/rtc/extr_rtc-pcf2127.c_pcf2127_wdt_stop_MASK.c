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
struct watchdog_device {int dummy; } ;
struct pcf2127 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF2127_REG_WD_VAL ; 
 int /*<<< orphan*/  PCF2127_WD_VAL_STOP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcf2127* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct pcf2127 *pcf2127 = FUNC1(wdd);

	return FUNC0(pcf2127->regmap, PCF2127_REG_WD_VAL,
			    PCF2127_WD_VAL_STOP);
}