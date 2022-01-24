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
typedef  int u8 ;
typedef  int u32 ;
struct telemetry_evtconfig {int num_evts; int period; int* evtmap; } ;
typedef  enum telemetry_action { ____Placeholder_telemetry_action } telemetry_action ;
struct TYPE_5__ {int ssram_evts_used; int curr_period; TYPE_1__* telem_evts; } ;
struct TYPE_6__ {TYPE_2__ ioss_config; } ;
struct TYPE_4__ {int evt_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOSS_TELEM_EVENT_CTL_READ ; 
 int /*<<< orphan*/  IOSS_TELEM_EVENT_CTL_WRITE ; 
 int /*<<< orphan*/  IOSS_TELEM_EVT_CTRL_WRITE_SIZE ; 
 int /*<<< orphan*/  IOSS_TELEM_READ_WORD ; 
 int /*<<< orphan*/  PMC_IPC_PMC_TELEMTRY ; 
 int TELEM_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TELEM_RESET ; 
 int TELEM_UPDATE ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int,int) ; 
 TYPE_3__* telm_conf ; 

__attribute__((used)) static int FUNC8(struct telemetry_evtconfig evtconfig,
					 enum telemetry_action action)
{
	u8 num_ioss_evts, ioss_period;
	int ret, index, idx;
	u32 *ioss_evtmap;
	u32 telem_ctrl;

	num_ioss_evts = evtconfig.num_evts;
	ioss_period = evtconfig.period;
	ioss_evtmap = evtconfig.evtmap;

	/* Get telemetry EVENT CTL */
	ret = FUNC5(PMC_IPC_PMC_TELEMTRY,
				    IOSS_TELEM_EVENT_CTL_READ, NULL, 0,
				    &telem_ctrl, IOSS_TELEM_READ_WORD);
	if (ret) {
		FUNC6("IOSS TELEM_CTRL Read Failed\n");
		return ret;
	}

	/* Disable Telemetry */
	FUNC2(telem_ctrl);

	ret = FUNC5(PMC_IPC_PMC_TELEMTRY,
				    IOSS_TELEM_EVENT_CTL_WRITE,
				    (u8 *)&telem_ctrl,
				    IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
				    NULL, 0);
	if (ret) {
		FUNC6("IOSS TELEM_CTRL Event Disable Write Failed\n");
		return ret;
	}


	/* Reset Everything */
	if (action == TELEM_RESET) {
		/* Clear All Events */
		FUNC0(telem_ctrl);

		ret = FUNC5(PMC_IPC_PMC_TELEMTRY,
					    IOSS_TELEM_EVENT_CTL_WRITE,
					    (u8 *)&telem_ctrl,
					    IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
					    NULL, 0);
		if (ret) {
			FUNC6("IOSS TELEM_CTRL Event Disable Write Failed\n");
			return ret;
		}
		telm_conf->ioss_config.ssram_evts_used = 0;

		/* Configure Events */
		for (idx = 0; idx < num_ioss_evts; idx++) {
			if (FUNC7(
			    telm_conf->ioss_config.telem_evts[idx].evt_id,
			    idx)) {
				FUNC6("IOSS TELEM_RESET Fail for data: %x\n",
				telm_conf->ioss_config.telem_evts[idx].evt_id);
				continue;
			}
			telm_conf->ioss_config.ssram_evts_used++;
		}
	}

	/* Re-Configure Everything */
	if (action == TELEM_UPDATE) {
		/* Clear All Events */
		FUNC0(telem_ctrl);

		ret = FUNC5(PMC_IPC_PMC_TELEMTRY,
					    IOSS_TELEM_EVENT_CTL_WRITE,
					    (u8 *)&telem_ctrl,
					    IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
					    NULL, 0);
		if (ret) {
			FUNC6("IOSS TELEM_CTRL Event Disable Write Failed\n");
			return ret;
		}
		telm_conf->ioss_config.ssram_evts_used = 0;

		/* Configure Events */
		for (index = 0; index < num_ioss_evts; index++) {
			telm_conf->ioss_config.telem_evts[index].evt_id =
			ioss_evtmap[index];

			if (FUNC7(
			    telm_conf->ioss_config.telem_evts[index].evt_id,
			    index)) {
				FUNC6("IOSS TELEM_UPDATE Fail for Evt%x\n",
					ioss_evtmap[index]);
				continue;
			}
			telm_conf->ioss_config.ssram_evts_used++;
		}
	}

	/* Add some Events */
	if (action == TELEM_ADD) {
		/* Configure Events */
		for (index = telm_conf->ioss_config.ssram_evts_used, idx = 0;
		     idx < num_ioss_evts; index++, idx++) {
			telm_conf->ioss_config.telem_evts[index].evt_id =
			ioss_evtmap[idx];

			if (FUNC7(
			    telm_conf->ioss_config.telem_evts[index].evt_id,
			    index)) {
				FUNC6("IOSS TELEM_ADD Fail for Event %x\n",
					ioss_evtmap[idx]);
				continue;
			}
			telm_conf->ioss_config.ssram_evts_used++;
		}
	}

	/* Enable Periodic Telemetry Events and enable SRAM trace */
	FUNC1(telem_ctrl);
	FUNC4(telem_ctrl);
	FUNC3(telem_ctrl);
	telem_ctrl |= ioss_period;

	ret = FUNC5(PMC_IPC_PMC_TELEMTRY,
				    IOSS_TELEM_EVENT_CTL_WRITE,
				    (u8 *)&telem_ctrl,
				    IOSS_TELEM_EVT_CTRL_WRITE_SIZE, NULL, 0);
	if (ret) {
		FUNC6("IOSS TELEM_CTRL Event Enable Write Failed\n");
		return ret;
	}

	telm_conf->ioss_config.curr_period = ioss_period;

	return 0;
}