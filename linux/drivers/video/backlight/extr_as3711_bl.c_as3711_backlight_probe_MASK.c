#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct as3711_bl_data {int /*<<< orphan*/  type; } ;
struct as3711_bl_supply {struct as3711_bl_data su2; struct as3711_bl_data su1; struct as3711_bl_pdata* pdata; struct as3711* as3711; } ;
struct as3711_bl_pdata {int su2_fbprot; int su2_feedback; int su1_max_uA; int su2_max_uA; scalar_t__ su2_fb; scalar_t__ su1_fb; } ;
struct as3711 {int dummy; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3711_BL_SU1 ; 
 int /*<<< orphan*/  AS3711_BL_SU2 ; 
#define  AS3711_SU2_CURR1 136 
#define  AS3711_SU2_CURR2 135 
#define  AS3711_SU2_CURR3 134 
#define  AS3711_SU2_CURR_AUTO 133 
#define  AS3711_SU2_GPIO2 132 
#define  AS3711_SU2_GPIO3 131 
#define  AS3711_SU2_GPIO4 130 
#define  AS3711_SU2_LX_SD4 129 
#define  AS3711_SU2_VOLTAGE 128 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct as3711_bl_supply*) ; 
 int FUNC2 (struct platform_device*,unsigned int,struct as3711_bl_data*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct as3711* FUNC4 (TYPE_4__*) ; 
 struct as3711_bl_pdata* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 struct as3711_bl_supply* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct as3711_bl_supply*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct as3711_bl_pdata *pdata = FUNC5(&pdev->dev);
	struct as3711 *as3711 = FUNC4(pdev->dev.parent);
	struct as3711_bl_supply *supply;
	struct as3711_bl_data *su;
	unsigned int max_brightness;
	int ret;

	if (!pdata) {
		FUNC3(&pdev->dev, "No platform data, exiting...\n");
		return -ENODEV;
	}

	if (pdev->dev.parent->of_node) {
		ret = FUNC0(&pdev->dev);
		if (ret < 0) {
			FUNC3(&pdev->dev, "DT parsing failed: %d\n", ret);
			return ret;
		}
	}

	if (!pdata->su1_fb && !pdata->su2_fb) {
		FUNC3(&pdev->dev, "No framebuffer specified\n");
		return -EINVAL;
	}

	/*
	 * Due to possible hardware damage I chose to block all modes,
	 * unsupported on my hardware. Anyone, wishing to use any of those modes
	 * will have to first review the code, then activate and test it.
	 */
	if (pdata->su1_fb ||
	    pdata->su2_fbprot != AS3711_SU2_GPIO4 ||
	    pdata->su2_feedback != AS3711_SU2_CURR_AUTO) {
		FUNC6(&pdev->dev,
			 "Attention! An untested mode has been chosen!\n"
			 "Please, review the code, enable, test, and report success:-)\n");
		return -EINVAL;
	}

	supply = FUNC7(&pdev->dev, sizeof(*supply), GFP_KERNEL);
	if (!supply)
		return -ENOMEM;

	supply->as3711 = as3711;
	supply->pdata = pdata;

	if (pdata->su1_fb) {
		su = &supply->su1;
		su->type = AS3711_BL_SU1;

		max_brightness = FUNC8(pdata->su1_max_uA, 31);
		ret = FUNC2(pdev, max_brightness, su);
		if (ret < 0)
			return ret;
	}

	if (pdata->su2_fb) {
		su = &supply->su2;
		su->type = AS3711_BL_SU2;

		switch (pdata->su2_fbprot) {
		case AS3711_SU2_GPIO2:
		case AS3711_SU2_GPIO3:
		case AS3711_SU2_GPIO4:
		case AS3711_SU2_LX_SD4:
			break;
		default:
			return -EINVAL;
		}

		switch (pdata->su2_feedback) {
		case AS3711_SU2_VOLTAGE:
			max_brightness = FUNC8(pdata->su2_max_uA, 31);
			break;
		case AS3711_SU2_CURR1:
		case AS3711_SU2_CURR2:
		case AS3711_SU2_CURR3:
		case AS3711_SU2_CURR_AUTO:
			max_brightness = FUNC8(pdata->su2_max_uA / 150, 255);
			break;
		default:
			return -EINVAL;
		}

		ret = FUNC1(supply);
		if (ret < 0)
			return ret;

		ret = FUNC2(pdev, max_brightness, su);
		if (ret < 0)
			return ret;
	}

	FUNC9(pdev, supply);

	return 0;
}