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
struct telemetry_evtconfig {scalar_t__ num_evts; int /*<<< orphan*/  evtmap; } ;
typedef  enum telemetry_action { ____Placeholder_telemetry_action } telemetry_action ;
struct TYPE_2__ {int telem_in_use; int /*<<< orphan*/  telem_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int TELEM_ADD ; 
 int /*<<< orphan*/  TELEM_IOSS ; 
 int /*<<< orphan*/  TELEM_PSS ; 
 int TELEM_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (struct telemetry_evtconfig,int) ; 
 int FUNC4 (struct telemetry_evtconfig,int) ; 
 TYPE_1__* telm_conf ; 

__attribute__((used)) static int FUNC5(struct telemetry_evtconfig pss_evtconfig,
				     struct telemetry_evtconfig ioss_evtconfig,
				     enum telemetry_action action)
{
	int ret;

	FUNC0(&(telm_conf->telem_lock));

	if ((action == TELEM_UPDATE) && (telm_conf->telem_in_use)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC2(TELEM_PSS, pss_evtconfig.evtmap,
				    pss_evtconfig.num_evts, action);
	if (ret)
		goto out;

	ret = FUNC2(TELEM_IOSS, ioss_evtconfig.evtmap,
				    ioss_evtconfig.num_evts, action);
	if (ret)
		goto out;

	if (ioss_evtconfig.num_evts) {
		ret = FUNC3(ioss_evtconfig, action);
		if (ret)
			goto out;
	}

	if (pss_evtconfig.num_evts) {
		ret = FUNC4(pss_evtconfig, action);
		if (ret)
			goto out;
	}

	if ((action == TELEM_UPDATE) || (action == TELEM_ADD))
		telm_conf->telem_in_use = true;
	else
		telm_conf->telem_in_use = false;

out:
	FUNC1(&(telm_conf->telem_lock));
	return ret;
}