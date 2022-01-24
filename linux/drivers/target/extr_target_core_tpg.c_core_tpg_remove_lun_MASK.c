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
struct se_portal_group {int /*<<< orphan*/  tpg_lun_mutex; } ;
struct se_lun {int lun_shutdown; int /*<<< orphan*/  lun_ref; int /*<<< orphan*/  link; scalar_t__ lun_se_dev; int /*<<< orphan*/  lun_dev_link; } ;
struct se_device {TYPE_1__* se_hba; int /*<<< orphan*/  se_port_lock; int /*<<< orphan*/  export_count; } ;
struct TYPE_2__ {int hba_flags; } ;

/* Variables and functions */
 int HBA_FLAGS_INTERNAL_USE ; 
 int /*<<< orphan*/  FUNC0 (struct se_lun*,struct se_portal_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct se_device* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct se_lun*) ; 
 int /*<<< orphan*/  FUNC11 (struct se_lun*) ; 

void FUNC12(
	struct se_portal_group *tpg,
	struct se_lun *lun)
{
	/*
	 * rcu_dereference_raw protected by se_lun->lun_group symlink
	 * reference to se_device->dev_group.
	 */
	struct se_device *dev = FUNC7(lun->lun_se_dev);

	lun->lun_shutdown = true;

	FUNC0(lun, tpg);
	/*
	 * Wait for any active I/O references to percpu se_lun->lun_ref to
	 * be released.  Also, se_lun->lun_ref is now used by PR and ALUA
	 * logic when referencing a remote target port during ALL_TGT_PT=1
	 * and generating UNIT_ATTENTIONs for ALUA access state transition.
	 */
	FUNC11(lun);

	FUNC3(&tpg->tpg_lun_mutex);
	if (lun->lun_se_dev) {
		FUNC10(lun);

		FUNC8(&dev->se_port_lock);
		FUNC2(&lun->lun_dev_link);
		dev->export_count--;
		FUNC6(lun->lun_se_dev, NULL);
		FUNC9(&dev->se_port_lock);
	}
	if (!(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE))
		FUNC1(&lun->link);

	lun->lun_shutdown = false;
	FUNC4(&tpg->tpg_lun_mutex);

	FUNC5(&lun->lun_ref);
}