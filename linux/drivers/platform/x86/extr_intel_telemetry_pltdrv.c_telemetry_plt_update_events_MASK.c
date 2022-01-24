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
struct telemetry_evtconfig {scalar_t__ num_evts; int /*<<< orphan*/  period; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TELEM_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct telemetry_evtconfig,struct telemetry_evtconfig,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct telemetry_evtconfig pss_evtconfig,
				struct telemetry_evtconfig ioss_evtconfig)
{
	int ret;

	if ((pss_evtconfig.num_evts > 0) &&
	    (FUNC0(pss_evtconfig.period))) {
		FUNC1("PSS Sampling Period Out of Range\n");
		return -EINVAL;
	}

	if ((ioss_evtconfig.num_evts > 0) &&
	    (FUNC0(ioss_evtconfig.period))) {
		FUNC1("IOSS Sampling Period Out of Range\n");
		return -EINVAL;
	}

	ret = FUNC2(pss_evtconfig, ioss_evtconfig,
					TELEM_UPDATE);
	if (ret)
		FUNC1("TELEMETRY Config Failed\n");

	return ret;
}