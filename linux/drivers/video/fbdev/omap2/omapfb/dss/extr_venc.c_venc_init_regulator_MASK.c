#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct TYPE_5__ {struct regulator* vdda_dac_reg; TYPE_1__* pdev; } ;
struct TYPE_4__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct regulator* FUNC3 (TYPE_3__*,char*) ; 
 TYPE_2__ venc ; 

__attribute__((used)) static int FUNC4(void)
{
	struct regulator *vdda_dac;

	if (venc.vdda_dac_reg != NULL)
		return 0;

	if (venc.pdev->dev.of_node)
		vdda_dac = FUNC3(&venc.pdev->dev, "vdda");
	else
		vdda_dac = FUNC3(&venc.pdev->dev, "vdda_dac");

	if (FUNC1(vdda_dac)) {
		if (FUNC2(vdda_dac) != -EPROBE_DEFER)
			FUNC0("can't get VDDA_DAC regulator\n");
		return FUNC2(vdda_dac);
	}

	venc.vdda_dac_reg = vdda_dac;

	return 0;
}