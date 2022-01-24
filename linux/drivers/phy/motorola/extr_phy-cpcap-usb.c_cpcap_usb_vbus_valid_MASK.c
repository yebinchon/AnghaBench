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
struct cpcap_phy_ddata {int /*<<< orphan*/  dev; int /*<<< orphan*/  vbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC2(struct cpcap_phy_ddata *ddata)
{
	int error, value = 0;

	error = FUNC1(ddata->vbus, &value);
	if (error >= 0)
		return value > 3900 ? true : false;

	FUNC0(ddata->dev, "error reading VBUS: %i\n", error);

	return false;
}