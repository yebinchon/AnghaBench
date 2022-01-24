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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
struct TYPE_2__ {int /*<<< orphan*/  telem_trace_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IOSS_TELEM_READ_WORD ; 
 int /*<<< orphan*/  IOSS_TELEM_TRACE_CTL_READ ; 
 int /*<<< orphan*/  IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL ; 
 int /*<<< orphan*/  PMC_IPC_PMC_TELEMTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TELEM_IOSS 129 
#define  TELEM_PSS 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_1__* telm_conf ; 

__attribute__((used)) static int FUNC6(enum telemetry_unit telem_unit,
					     u32 *verbosity)
{
	u32 temp = 0;
	int ret;

	if (verbosity == NULL)
		return -EINVAL;

	FUNC3(&(telm_conf->telem_trace_lock));
	switch (telem_unit) {
	case TELEM_PSS:
		ret = FUNC2(
				IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL,
				0, 0, NULL, &temp);
		if (ret) {
			FUNC5("PSS TRACE_CTRL Read Failed\n");
			goto out;
		}

		break;

	case TELEM_IOSS:
		ret = FUNC1(PMC_IPC_PMC_TELEMTRY,
				IOSS_TELEM_TRACE_CTL_READ, NULL, 0, &temp,
				IOSS_TELEM_READ_WORD);
		if (ret) {
			FUNC5("IOSS TRACE_CTL Read Failed\n");
			goto out;
		}

		break;

	default:
		FUNC5("Unknown Telemetry Unit Specified %d\n", telem_unit);
		ret = -EINVAL;
		break;
	}
	FUNC0(temp, *verbosity);

out:
	FUNC4(&(telm_conf->telem_trace_lock));
	return ret;
}