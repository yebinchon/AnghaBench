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
struct cpcap_phy_ddata {int /*<<< orphan*/ ** gpio; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpcap_phy_ddata *ddata)
{
	int i;

	for (i = 0; i < 2; i++) {
		ddata->gpio[i] = FUNC3(ddata->dev, "mode",
						      i, GPIOD_OUT_HIGH);
		if (FUNC0(ddata->gpio[i])) {
			FUNC2(ddata->dev, "no mode change GPIO%i: %li\n",
				 i, FUNC1(ddata->gpio[i]));
			ddata->gpio[i] = NULL;
		}
	}
}