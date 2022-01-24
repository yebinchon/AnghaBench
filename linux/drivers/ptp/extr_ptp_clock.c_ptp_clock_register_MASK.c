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
struct ptp_clock_info {scalar_t__ n_alarm; int /*<<< orphan*/  owner; scalar_t__ pps; scalar_t__ do_aux_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ptp_clock {int index; int /*<<< orphan*/  pincfg_mux; int /*<<< orphan*/  tsevq_mux; scalar_t__ kworker; int /*<<< orphan*/  devid; scalar_t__ pps_source; TYPE_2__ clock; scalar_t__ dev; int /*<<< orphan*/  pin_attr_groups; int /*<<< orphan*/  aux_work; struct ptp_clock_info* info; int /*<<< orphan*/  tsev_wq; TYPE_1__ tsevq; } ;
struct pps_source_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pps ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ptp_clock* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINORMASK ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  PPS_MAX_NAME_LEN ; 
 scalar_t__ PTP_MAX_ALARMS ; 
 int /*<<< orphan*/  PTP_PPS_DEFAULTS ; 
 int /*<<< orphan*/  PTP_PPS_MODE ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  delete_ptp_clock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct ptp_clock*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ptp_clock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ptp_clock* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pps_source_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct pps_source_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  ptp_aux_kworker ; 
 int /*<<< orphan*/  ptp_class ; 
 int /*<<< orphan*/  FUNC22 (struct ptp_clock*) ; 
 int /*<<< orphan*/  ptp_clock_ops ; 
 int /*<<< orphan*/  ptp_clocks_map ; 
 int /*<<< orphan*/  ptp_devt ; 
 int FUNC23 (struct ptp_clock*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

struct ptp_clock *FUNC26(struct ptp_clock_info *info,
				     struct device *parent)
{
	struct ptp_clock *ptp;
	int err = 0, index, major = FUNC2(ptp_devt);

	if (info->n_alarm > PTP_MAX_ALARMS)
		return FUNC0(-EINVAL);

	/* Initialize a clock structure. */
	err = -ENOMEM;
	ptp = FUNC14(sizeof(struct ptp_clock), GFP_KERNEL);
	if (ptp == NULL)
		goto no_memory;

	index = FUNC7(&ptp_clocks_map, 0, MINORMASK + 1, GFP_KERNEL);
	if (index < 0) {
		err = index;
		goto no_slot;
	}

	ptp->clock.ops = ptp_clock_ops;
	ptp->clock.release = delete_ptp_clock;
	ptp->info = info;
	ptp->devid = FUNC3(major, index);
	ptp->index = index;
	FUNC25(&ptp->tsevq.lock);
	FUNC17(&ptp->tsevq_mux);
	FUNC17(&ptp->pincfg_mux);
	FUNC9(&ptp->tsev_wq);

	if (ptp->info->do_aux_work) {
		FUNC13(&ptp->aux_work, ptp_aux_kworker);
		ptp->kworker = FUNC11(0, "ptp%d", ptp->index);
		if (FUNC1(ptp->kworker)) {
			err = FUNC4(ptp->kworker);
			FUNC21("failed to create ptp aux_worker %d\n", err);
			goto kworker_err;
		}
	}

	err = FUNC23(ptp);
	if (err)
		goto no_pin_groups;

	/* Create a new device in our class. */
	ptp->dev = FUNC5(ptp_class, parent, ptp->devid,
					     ptp, ptp->pin_attr_groups,
					     "ptp%d", ptp->index);
	if (FUNC1(ptp->dev)) {
		err = FUNC4(ptp->dev);
		goto no_device;
	}

	/* Register a new PPS source. */
	if (info->pps) {
		struct pps_source_info pps;
		FUNC15(&pps, 0, sizeof(pps));
		FUNC24(pps.name, PPS_MAX_NAME_LEN, "ptp%d", index);
		pps.mode = PTP_PPS_MODE;
		pps.owner = info->owner;
		ptp->pps_source = FUNC19(&pps, PTP_PPS_DEFAULTS);
		if (FUNC1(ptp->pps_source)) {
			err = FUNC4(ptp->pps_source);
			FUNC21("failed to register pps source\n");
			goto no_pps;
		}
	}

	/* Create a posix clock. */
	err = FUNC18(&ptp->clock, ptp->devid);
	if (err) {
		FUNC21("failed to create posix clock\n");
		goto no_clock;
	}

	return ptp;

no_clock:
	if (ptp->pps_source)
		FUNC20(ptp->pps_source);
no_pps:
	FUNC6(ptp_class, ptp->devid);
no_device:
	FUNC22(ptp);
no_pin_groups:
	if (ptp->kworker)
		FUNC12(ptp->kworker);
kworker_err:
	FUNC16(&ptp->tsevq_mux);
	FUNC16(&ptp->pincfg_mux);
	FUNC8(&ptp_clocks_map, index);
no_slot:
	FUNC10(ptp);
no_memory:
	return FUNC0(err);
}