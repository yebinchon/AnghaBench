#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {struct max8925_backlight_pdata* platform_data; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct max8925_backlight_pdata {int /*<<< orphan*/  dual_string; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct max8925_backlight_pdata* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct device_node *nproot = pdev->dev.parent->of_node, *np;
	struct max8925_backlight_pdata *pdata;
	u32 val;

	if (!nproot || !FUNC0(CONFIG_OF))
		return;

	pdata = FUNC2(&pdev->dev,
			     sizeof(struct max8925_backlight_pdata),
			     GFP_KERNEL);
	if (!pdata)
		return;

	np = FUNC3(nproot, "backlight");
	if (!np) {
		FUNC1(&pdev->dev, "failed to find backlight node\n");
		return;
	}

	if (!FUNC5(np, "maxim,max8925-dual-string", &val))
		pdata->dual_string = val;

	FUNC4(np);

	pdev->dev.platform_data = pdata;
}