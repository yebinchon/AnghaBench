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
typedef  int u32 ;
struct telemetry_evtconfig {void* period; void* num_evts; int /*<<< orphan*/ * evtmap; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {void* max_period; void* min_period; } ;
struct TYPE_4__ {void* max_period; void* min_period; } ;
struct TYPE_6__ {TYPE_2__ pss_config; TYPE_1__ ioss_config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IOSS_TELEM_INFO_READ ; 
 int /*<<< orphan*/  IOSS_TELEM_READ_WORD ; 
 int /*<<< orphan*/  IPC_PUNIT_BIOS_READ_TELE_INFO ; 
 int /*<<< orphan*/  PMC_IPC_PMC_TELEMTRY ; 
 int TELEM_INFO_NENABLES_MASK ; 
 int TELEM_INFO_SRAMEVTS_MASK ; 
 int TELEM_INFO_SRAMEVTS_SHIFT ; 
 int TELEM_MAX_EVENTS_SRAM ; 
 void* TELEM_MAX_OS_ALLOCATED_EVENTS ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  TELEM_RESET ; 
 void* TELEM_SAMPLING_DEFAULT_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (struct telemetry_evtconfig,struct telemetry_evtconfig,int /*<<< orphan*/ ) ; 
 TYPE_3__* telm_conf ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct telemetry_evtconfig pss_evtconfig, ioss_evtconfig;
	u32 read_buf, events, event_regs;
	int ret;

	ret = FUNC3(PMC_IPC_PMC_TELEMTRY, IOSS_TELEM_INFO_READ,
				    NULL, 0, &read_buf, IOSS_TELEM_READ_WORD);
	if (ret) {
		FUNC2(&pdev->dev, "IOSS TELEM_INFO Read Failed\n");
		return ret;
	}

	/* Get telemetry Info */
	events = (read_buf & TELEM_INFO_SRAMEVTS_MASK) >>
		  TELEM_INFO_SRAMEVTS_SHIFT;
	event_regs = read_buf & TELEM_INFO_NENABLES_MASK;
	if ((events < TELEM_MAX_EVENTS_SRAM) ||
	    (event_regs < TELEM_MAX_EVENTS_SRAM)) {
		FUNC2(&pdev->dev, "IOSS:Insufficient Space for SRAM Trace\n");
		FUNC2(&pdev->dev, "SRAM Events %d; Event Regs %d\n",
			events, event_regs);
		return -ENOMEM;
	}

	telm_conf->ioss_config.min_period = FUNC1(read_buf);
	telm_conf->ioss_config.max_period = FUNC0(read_buf);

	/* PUNIT Mailbox Setup */
	ret = FUNC4(IPC_PUNIT_BIOS_READ_TELE_INFO, 0, 0,
				      NULL, &read_buf);
	if (ret) {
		FUNC2(&pdev->dev, "PSS TELEM_INFO Read Failed\n");
		return ret;
	}

	/* Get telemetry Info */
	events = (read_buf & TELEM_INFO_SRAMEVTS_MASK) >>
		  TELEM_INFO_SRAMEVTS_SHIFT;
	event_regs = read_buf & TELEM_INFO_SRAMEVTS_MASK;
	if ((events < TELEM_MAX_EVENTS_SRAM) ||
	    (event_regs < TELEM_MAX_EVENTS_SRAM)) {
		FUNC2(&pdev->dev, "PSS:Insufficient Space for SRAM Trace\n");
		FUNC2(&pdev->dev, "SRAM Events %d; Event Regs %d\n",
			events, event_regs);
		return -ENOMEM;
	}

	telm_conf->pss_config.min_period = FUNC1(read_buf);
	telm_conf->pss_config.max_period = FUNC0(read_buf);

	pss_evtconfig.evtmap = NULL;
	pss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
	pss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

	ioss_evtconfig.evtmap = NULL;
	ioss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
	ioss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

	ret = FUNC5(pss_evtconfig, ioss_evtconfig,
					TELEM_RESET);
	if (ret) {
		FUNC2(&pdev->dev, "TELEMETRY Setup Failed\n");
		return ret;
	}
	return 0;
}