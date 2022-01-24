#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ci_hdrc_cable {int /*<<< orphan*/  nb; int /*<<< orphan*/  edev; struct ci_hdrc* ci; } ;
struct ci_hdrc {int /*<<< orphan*/  dev; TYPE_1__* platdata; } ;
struct TYPE_2__ {struct ci_hdrc_cable vbus_extcon; struct ci_hdrc_cable id_extcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ci_hdrc *ci)
{
	struct ci_hdrc_cable *id, *vbus;
	int ret;

	id = &ci->platdata->id_extcon;
	id->ci = ci;
	if (!FUNC0(id->edev)) {
		ret = FUNC2(ci->dev, id->edev,
						EXTCON_USB_HOST, &id->nb);
		if (ret < 0) {
			FUNC1(ci->dev, "register ID failed\n");
			return ret;
		}
	}

	vbus = &ci->platdata->vbus_extcon;
	vbus->ci = ci;
	if (!FUNC0(vbus->edev)) {
		ret = FUNC2(ci->dev, vbus->edev,
						EXTCON_USB, &vbus->nb);
		if (ret < 0) {
			FUNC1(ci->dev, "register VBUS failed\n");
			return ret;
		}
	}

	return 0;
}