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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct fsl_mc_device {TYPE_1__ obj_desc; struct device dev; } ;
struct TYPE_4__ {scalar_t__ num_ifs; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; TYPE_2__ sw_attr; int /*<<< orphan*/  dev_id; } ;
struct dpsw_stp_cfg {int /*<<< orphan*/  state; int /*<<< orphan*/  vlan_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_VLAN_ID ; 
 int /*<<< orphan*/  DPSW_FDB_LEARNING_MODE_HW ; 
 scalar_t__ DPSW_MIN_VER_MAJOR ; 
 scalar_t__ DPSW_MIN_VER_MINOR ; 
 int /*<<< orphan*/  DPSW_STP_STATE_FORWARDING ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct ethsw_core* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct dpsw_stp_cfg*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethsw_owq ; 
 int FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct fsl_mc_device *sw_dev)
{
	struct device *dev = &sw_dev->dev;
	struct ethsw_core *ethsw = FUNC3(dev);
	u16 version_major, version_minor, i;
	struct dpsw_stp_cfg stp_cfg;
	int err;

	ethsw->dev_id = sw_dev->obj_desc.id;

	err = FUNC10(ethsw->mc_io, 0, ethsw->dev_id, &ethsw->dpsw_handle);
	if (err) {
		FUNC2(dev, "dpsw_open err %d\n", err);
		return err;
	}

	err = FUNC7(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  &ethsw->sw_attr);
	if (err) {
		FUNC2(dev, "dpsw_get_attributes err %d\n", err);
		goto err_close;
	}

	err = FUNC6(ethsw->mc_io, 0,
				   &version_major,
				   &version_minor);
	if (err) {
		FUNC2(dev, "dpsw_get_api_version err %d\n", err);
		goto err_close;
	}

	/* Minimum supported DPSW version check */
	if (version_major < DPSW_MIN_VER_MAJOR ||
	    (version_major == DPSW_MIN_VER_MAJOR &&
	     version_minor < DPSW_MIN_VER_MINOR)) {
		FUNC2(dev, "DPSW version %d:%d not supported. Use %d.%d or greater.\n",
			version_major,
			version_minor,
			DPSW_MIN_VER_MAJOR, DPSW_MIN_VER_MINOR);
		err = -ENOTSUPP;
		goto err_close;
	}

	err = FUNC11(ethsw->mc_io, 0, ethsw->dpsw_handle);
	if (err) {
		FUNC2(dev, "dpsw_reset err %d\n", err);
		goto err_close;
	}

	err = FUNC5(ethsw->mc_io, 0, ethsw->dpsw_handle, 0,
					 DPSW_FDB_LEARNING_MODE_HW);
	if (err) {
		FUNC2(dev, "dpsw_fdb_set_learning_mode err %d\n", err);
		goto err_close;
	}

	stp_cfg.vlan_id = DEFAULT_VLAN_ID;
	stp_cfg.state = DPSW_STP_STATE_FORWARDING;

	for (i = 0; i < ethsw->sw_attr.num_ifs; i++) {
		err = FUNC9(ethsw->mc_io, 0, ethsw->dpsw_handle, i,
				      &stp_cfg);
		if (err) {
			FUNC2(dev, "dpsw_if_set_stp err %d for port %d\n",
				err, i);
			goto err_close;
		}

		err = FUNC8(ethsw->mc_io, 0,
					    ethsw->dpsw_handle, i, 1);
		if (err) {
			FUNC2(dev,
				"dpsw_if_set_broadcast err %d for port %d\n",
				err, i);
			goto err_close;
		}
	}

	ethsw_owq = FUNC0("%s_ordered", WQ_MEM_RECLAIM,
					    "ethsw");
	if (!ethsw_owq) {
		err = -ENOMEM;
		goto err_close;
	}

	err = FUNC12(dev);
	if (err)
		goto err_destroy_ordered_workqueue;

	return 0;

err_destroy_ordered_workqueue:
	FUNC1(ethsw_owq);

err_close:
	FUNC4(ethsw->mc_io, 0, ethsw->dpsw_handle);
	return err;
}