#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_bandgap {int /*<<< orphan*/  tshut_gpio; int /*<<< orphan*/  irq; int /*<<< orphan*/  div_clk; int /*<<< orphan*/  fclock; TYPE_2__* conf; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int sensor_count; int /*<<< orphan*/  (* remove_sensor ) (struct ti_bandgap*,int) ;TYPE_1__* sensors; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* unregister_cooling ) (struct ti_bandgap*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_CTRL ; 
 int /*<<< orphan*/  TALERT ; 
 scalar_t__ FUNC0 (struct ti_bandgap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSHUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ti_bandgap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ti_bandgap* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_bandgap*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_bandgap*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_bandgap*,int) ; 

__attribute__((used)) static
int FUNC10(struct platform_device *pdev)
{
	struct ti_bandgap *bgp = FUNC6(pdev);
	int i;

	/* First thing is to remove sensor interfaces */
	for (i = 0; i < bgp->conf->sensor_count; i++) {
		if (bgp->conf->sensors[i].unregister_cooling)
			bgp->conf->sensors[i].unregister_cooling(bgp, i);

		if (bgp->conf->remove_sensor)
			bgp->conf->remove_sensor(bgp, i);
	}

	FUNC9(bgp, false);

	if (FUNC0(bgp, CLK_CTRL))
		FUNC1(bgp->fclock);
	FUNC2(bgp->fclock);
	FUNC2(bgp->div_clk);

	if (FUNC0(bgp, TALERT))
		FUNC3(bgp->irq, bgp);

	if (FUNC0(bgp, TSHUT)) {
		FUNC3(FUNC5(bgp->tshut_gpio), NULL);
		FUNC4(bgp->tshut_gpio);
	}

	return 0;
}