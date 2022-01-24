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
struct scsi_device {int dummy; } ;
struct alua_port_group {int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; int /*<<< orphan*/  dh_list; int /*<<< orphan*/  device_id_str; scalar_t__ device_id_len; } ;
struct alua_dh_data {int /*<<< orphan*/  pg_lock; int /*<<< orphan*/  pg; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (struct alua_port_group*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct alua_port_group*) ; 
 int SCSI_DH_DEV_UNSUPP ; 
 int SCSI_DH_NOMEM ; 
 int SCSI_DH_OK ; 
 struct alua_port_group* FUNC2 (struct scsi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alua_port_group*,struct scsi_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct alua_port_group*) ; 
 struct alua_port_group* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_port_group ; 
 int FUNC10 (struct scsi_device*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct scsi_device *sdev, struct alua_dh_data *h,
			  int tpgs)
{
	int rel_port = -1, group_id;
	struct alua_port_group *pg, *old_pg = NULL;
	bool pg_updated = false;
	unsigned long flags;

	group_id = FUNC10(sdev, &rel_port);
	if (group_id < 0) {
		/*
		 * Internal error; TPGS supported but required
		 * VPD identification descriptors not present.
		 * Disable ALUA support
		 */
		FUNC11(KERN_INFO, sdev,
			    "%s: No target port descriptors found\n",
			    ALUA_DH_NAME);
		return SCSI_DH_DEV_UNSUPP;
	}

	pg = FUNC2(sdev, group_id, tpgs);
	if (FUNC0(pg)) {
		if (FUNC1(pg) == -ENOMEM)
			return SCSI_DH_NOMEM;
		return SCSI_DH_DEV_UNSUPP;
	}
	if (pg->device_id_len)
		FUNC11(KERN_INFO, sdev,
			    "%s: device %s port group %x rel port %x\n",
			    ALUA_DH_NAME, pg->device_id_str,
			    group_id, rel_port);
	else
		FUNC11(KERN_INFO, sdev,
			    "%s: port group %x rel port %x\n",
			    ALUA_DH_NAME, group_id, rel_port);

	/* Check for existing port group references */
	FUNC12(&h->pg_lock);
	old_pg = FUNC9(h->pg, FUNC7(&h->pg_lock));
	if (old_pg != pg) {
		/* port group has changed. Update to new port group */
		if (h->pg) {
			FUNC13(&old_pg->lock, flags);
			FUNC6(&h->node);
			FUNC15(&old_pg->lock, flags);
		}
		FUNC8(h->pg, pg);
		pg_updated = true;
	}

	FUNC13(&pg->lock, flags);
	if (pg_updated)
		FUNC5(&h->node, &pg->dh_list);
	FUNC15(&pg->lock, flags);

	FUNC3(FUNC9(h->pg,
						  FUNC7(&h->pg_lock)),
			sdev, NULL, true);
	FUNC14(&h->pg_lock);

	if (old_pg)
		FUNC4(&old_pg->kref, release_port_group);

	return SCSI_DH_OK;
}