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
struct se_portal_group {int /*<<< orphan*/  tpg_lun_mutex; int /*<<< orphan*/  tpg_lun_hlist; } ;
struct se_lun {int lun_access_ro; int /*<<< orphan*/  lun_ref; int /*<<< orphan*/  link; int /*<<< orphan*/  lun_dev_link; int /*<<< orphan*/  lun_se_dev; int /*<<< orphan*/  lun_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  default_tg_pt_gp; } ;
struct se_device {int dev_flags; TYPE_3__* se_hba; int /*<<< orphan*/  se_port_lock; int /*<<< orphan*/  dev_sep_list; int /*<<< orphan*/  export_count; int /*<<< orphan*/  dev_index; TYPE_2__ t10_alua; TYPE_1__* transport; } ;
struct TYPE_6__ {int hba_flags; } ;
struct TYPE_4__ {int transport_flags; } ;

/* Variables and functions */
 int DF_READ_ONLY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HBA_FLAGS_INTERNAL_USE ; 
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ; 
 int FUNC0 (struct se_lun*,struct se_device*) ; 
 int /*<<< orphan*/  core_tpg_lun_ref_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct se_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct se_lun*,int /*<<< orphan*/ ) ; 

int FUNC11(
	struct se_portal_group *tpg,
	struct se_lun *lun,
	bool lun_access_ro,
	struct se_device *dev)
{
	int ret;

	ret = FUNC6(&lun->lun_ref, core_tpg_lun_ref_release, 0,
			      GFP_KERNEL);
	if (ret < 0)
		goto out;

	ret = FUNC0(lun, dev);
	if (ret)
		goto out_kill_ref;

	if (!(dev->transport->transport_flags &
	     TRANSPORT_FLAG_PASSTHROUGH_ALUA) &&
	    !(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
		FUNC10(lun, dev->t10_alua.default_tg_pt_gp);

	FUNC3(&tpg->tpg_lun_mutex);

	FUNC8(&dev->se_port_lock);
	lun->lun_index = dev->dev_index;
	FUNC7(lun->lun_se_dev, dev);
	dev->export_count++;
	FUNC2(&lun->lun_dev_link, &dev->dev_sep_list);
	FUNC9(&dev->se_port_lock);

	if (dev->dev_flags & DF_READ_ONLY)
		lun->lun_access_ro = true;
	else
		lun->lun_access_ro = lun_access_ro;
	if (!(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
		FUNC1(&lun->link, &tpg->tpg_lun_hlist);
	FUNC4(&tpg->tpg_lun_mutex);

	return 0;

out_kill_ref:
	FUNC5(&lun->lun_ref);
out:
	return ret;
}