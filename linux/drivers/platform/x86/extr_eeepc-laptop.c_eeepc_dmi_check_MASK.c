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
struct eeepc_laptop {int cpufv_disabled; int hotplug_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(struct eeepc_laptop *eeepc)
{
	const char *model;

	model = FUNC0(DMI_PRODUCT_NAME);
	if (!model)
		return;

	/*
	 * Blacklist for setting cpufv (cpu speed).
	 *
	 * EeePC 4G ("701") implements CFVS, but it is not supported
	 * by the pre-installed OS, and the original option to change it
	 * in the BIOS setup screen was removed in later versions.
	 *
	 * Judging by the lack of "Super Hybrid Engine" on Asus product pages,
	 * this applies to all "701" models (4G/4G Surf/2G Surf).
	 *
	 * So Asus made a deliberate decision not to support it on this model.
	 * We have several reports that using it can cause the system to hang
	 *
	 * The hang has also been reported on a "702" (Model name "8G"?).
	 *
	 * We avoid dmi_check_system() / dmi_match(), because they use
	 * substring matching.  We don't want to affect the "701SD"
	 * and "701SDX" models, because they do support S.H.E.
	 */
	if (FUNC2(model, "701") == 0 || FUNC2(model, "702") == 0) {
		eeepc->cpufv_disabled = true;
		FUNC1("model %s does not officially support setting cpu speed\n",
			model);
		FUNC1("cpufv disabled to avoid instability\n");
	}

	/*
	 * Blacklist for wlan hotplug
	 *
	 * Eeepc 1005HA doesn't work like others models and don't need the
	 * hotplug code. In fact, current hotplug code seems to unplug another
	 * device...
	 */
	if (FUNC2(model, "1005HA") == 0 || FUNC2(model, "1201N") == 0 ||
	    FUNC2(model, "1005PE") == 0) {
		eeepc->hotplug_disabled = true;
		FUNC1("wlan hotplug disabled\n");
	}
}