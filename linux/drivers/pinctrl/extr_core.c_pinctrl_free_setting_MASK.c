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
struct pinctrl_setting {int type; } ;

/* Variables and functions */
#define  PIN_MAP_TYPE_CONFIGS_GROUP 130 
#define  PIN_MAP_TYPE_CONFIGS_PIN 129 
#define  PIN_MAP_TYPE_MUX_GROUP 128 
 int /*<<< orphan*/  FUNC0 (struct pinctrl_setting*) ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_setting*) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl_setting*) ; 

__attribute__((used)) static void FUNC3(bool disable_setting,
				 struct pinctrl_setting *setting)
{
	switch (setting->type) {
	case PIN_MAP_TYPE_MUX_GROUP:
		if (disable_setting)
			FUNC1(setting);
		FUNC2(setting);
		break;
	case PIN_MAP_TYPE_CONFIGS_PIN:
	case PIN_MAP_TYPE_CONFIGS_GROUP:
		FUNC0(setting);
		break;
	default:
		break;
	}
}