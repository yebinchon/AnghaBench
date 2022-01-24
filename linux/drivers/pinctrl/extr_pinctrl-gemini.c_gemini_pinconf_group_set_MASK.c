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
typedef  int u32 ;
struct pinctrl_dev {int dummy; } ;
struct gemini_pmx {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; scalar_t__ is_3516; scalar_t__ is_3512; } ;
struct gemini_pin_group {int name; int /*<<< orphan*/  driving_mask; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GLOBAL_IODRIVE ; 
#define  PIN_CONFIG_DRIVE_STRENGTH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gemini_pin_group* gemini_3512_pin_groups ; 
 struct gemini_pin_group* gemini_3516_pin_groups ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 struct gemini_pmx* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev,
				    unsigned selector,
				    unsigned long *configs,
				    unsigned num_configs)
{
	struct gemini_pmx *pmx = FUNC5(pctldev);
	const struct gemini_pin_group *grp = NULL;
	enum pin_config_param param;
	u32 arg;
	u32 val;
	int i;

	if (pmx->is_3512)
		grp = &gemini_3512_pin_groups[selector];
	if (pmx->is_3516)
		grp = &gemini_3516_pin_groups[selector];

	/* First figure out if this group supports configs */
	if (!grp->driving_mask) {
		FUNC1(pmx->dev, "pin config group \"%s\" does "
			"not support drive strength setting\n",
			grp->name);
		return -EINVAL;
	}

	for (i = 0; i < num_configs; i++) {
		param = FUNC4(configs[i]);
		arg = FUNC3(configs[i]);

		switch (param) {
		case PIN_CONFIG_DRIVE_STRENGTH:
			switch (arg) {
			case 4:
				val = 0;
				break;
			case 8:
				val = 1;
				break;
			case 12:
				val = 2;
				break;
			case 16:
				val = 3;
				break;
			default:
				FUNC1(pmx->dev,
					"invalid drive strength %d mA\n",
					arg);
				return -ENOTSUPP;
			}
			val <<= (FUNC2(grp->driving_mask) - 1);
			FUNC6(pmx->map, GLOBAL_IODRIVE,
					   grp->driving_mask,
					   val);
			FUNC0(pmx->dev,
				"set group %s to %d mA drive strength mask %08x val %08x\n",
				grp->name, arg, grp->driving_mask, val);
			break;
		default:
			FUNC1(pmx->dev, "invalid config param %04x\n", param);
			return -ENOTSUPP;
		}
	}

	return 0;
}