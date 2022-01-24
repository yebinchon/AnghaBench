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
struct slg51000 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int SLG51000_FLT_OVER_TEMP_MASK ; 
 unsigned int SLG51000_FLT_POR_MASK ; 
 unsigned int SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK ; 
 unsigned int SLG51000_FLT_RST_MASK ; 
 int /*<<< orphan*/  SLG51000_SYSCTL_FAULT_LOG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct slg51000 *chip)
{
	unsigned int val = 0;
	int ret = 0;

	ret = FUNC2(chip->regmap, SLG51000_SYSCTL_FAULT_LOG1, &val);
	if (ret < 0) {
		FUNC1(chip->dev, "Failed to read Fault log register\n");
		return;
	}

	if (val & SLG51000_FLT_OVER_TEMP_MASK)
		FUNC0(chip->dev, "Fault log: FLT_OVER_TEMP\n");
	if (val & SLG51000_FLT_POWER_SEQ_CRASH_REQ_MASK)
		FUNC0(chip->dev, "Fault log: FLT_POWER_SEQ_CRASH_REQ\n");
	if (val & SLG51000_FLT_RST_MASK)
		FUNC0(chip->dev, "Fault log: FLT_RST\n");
	if (val & SLG51000_FLT_POR_MASK)
		FUNC0(chip->dev, "Fault log: FLT_POR\n");
}