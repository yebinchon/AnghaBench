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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arche_apb_ctrl_drvdata {int state; int /*<<< orphan*/  init_disabled; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ARCHE_PLATFORM_STATE_ACTIVE 131 
#define  ARCHE_PLATFORM_STATE_FW_FLASHING 130 
#define  ARCHE_PLATFORM_STATE_OFF 129 
#define  ARCHE_PLATFORM_STATE_STANDBY 128 
 struct arche_apb_ctrl_drvdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	struct arche_apb_ctrl_drvdata *apb = FUNC0(dev);

	switch (apb->state) {
	case ARCHE_PLATFORM_STATE_OFF:
		return FUNC1(buf, "off%s\n",
				apb->init_disabled ? ",disabled" : "");
	case ARCHE_PLATFORM_STATE_ACTIVE:
		return FUNC1(buf, "active\n");
	case ARCHE_PLATFORM_STATE_STANDBY:
		return FUNC1(buf, "standby\n");
	case ARCHE_PLATFORM_STATE_FW_FLASHING:
		return FUNC1(buf, "fw_flashing\n");
	default:
		return FUNC1(buf, "unknown state\n");
	}
}