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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;
struct TYPE_5__ {scalar_t__ log_level; TYPE_1__ pci; } ;
struct TYPE_6__ {int /*<<< orphan*/  sm_list; } ;
struct csio_hw {int /*<<< orphan*/  dev_num; int /*<<< orphan*/  evt_free_q; int /*<<< orphan*/  evt_active_q; TYPE_2__ params; int /*<<< orphan*/ * chip_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  sln_head; int /*<<< orphan*/  lock; TYPE_3__ sm; } ;
struct csio_evt_msg {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_HW_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ csio_dbg_level ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*) ; 
 scalar_t__ csio_evtq_sz ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  csio_hw_mb_timer ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct csio_hw*) ; 
 int /*<<< orphan*/  csio_hws_uninit ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC17 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct csio_hw*) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct csio_hw*) ; 
 int /*<<< orphan*/  dev_num ; 
 struct csio_evt_msg* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_evt_freeq ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t5_ops ; 

int
FUNC25(struct csio_hw *hw)
{
	int rv = -EINVAL;
	uint32_t i;
	uint16_t ven_id, dev_id;
	struct csio_evt_msg	*evt_entry;

	FUNC1(&hw->sm.sm_list);
	FUNC10(&hw->sm, csio_hws_uninit);
	FUNC23(&hw->lock);
	FUNC1(&hw->sln_head);

	/* Get the PCI vendor & device id */
	FUNC4(hw);

	FUNC24(hw->name, CSIO_HW_NAME);

	/* Initialize the HW chip ops T5 specific ops */
	hw->chip_ops = &t5_ops;

	/* Set the model & its description */

	ven_id = hw->params.pci.vendor_id;
	dev_id = hw->params.pci.device_id;

	FUNC5(hw, ven_id, dev_id);

	/* Initialize default log level */
	hw->params.log_level = (uint32_t) csio_dbg_level;

	FUNC17(hw, -1);
	FUNC18(hw, -1);

	/* Init all the modules: Mailbox, WorkRequest and Transport */
	if (FUNC12(FUNC6(hw), hw, csio_hw_mb_timer))
		goto err;

	rv = FUNC20(FUNC9(hw), hw);
	if (rv)
		goto err_mbm_exit;

	rv = FUNC16(FUNC8(hw), hw);
	if (rv)
		goto err_wrm_exit;

	rv = FUNC14(FUNC7(hw), hw);
	if (rv)
		goto err_scsim_exit;
	/* Pre-allocate evtq and initialize them */
	FUNC1(&hw->evt_active_q);
	FUNC1(&hw->evt_free_q);
	for (i = 0; i < csio_evtq_sz; i++) {

		evt_entry = FUNC21(sizeof(struct csio_evt_msg), GFP_KERNEL);
		if (!evt_entry) {
			rv = -ENOMEM;
			FUNC2(hw, "Failed to initialize eventq");
			goto err_evtq_cleanup;
		}

		FUNC22(&evt_entry->list, &hw->evt_free_q);
		FUNC0(hw, n_evt_freeq);
	}

	hw->dev_num = dev_num;
	dev_num++;

	return 0;

err_evtq_cleanup:
	FUNC3(hw);
	FUNC13(FUNC7(hw));
err_scsim_exit:
	FUNC15(FUNC8(hw));
err_wrm_exit:
	FUNC19(FUNC9(hw), hw);
err_mbm_exit:
	FUNC11(FUNC6(hw));
err:
	return rv;
}