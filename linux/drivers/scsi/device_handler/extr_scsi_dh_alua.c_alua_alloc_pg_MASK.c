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
struct alua_port_group {scalar_t__ device_id_len; char* device_id_str; int group_id; int tpgs; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; int /*<<< orphan*/  dh_list; int /*<<< orphan*/  rtpg_list; int /*<<< orphan*/  rtpg_work; int /*<<< orphan*/  kref; int /*<<< orphan*/  flags; int /*<<< orphan*/  valid_states; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 int /*<<< orphan*/  ALUA_OPTIMIZE_STPG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct alua_port_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SCSI_ACCESS_STATE_OPTIMAL ; 
 int /*<<< orphan*/  TPGS_SUPPORT_ALL ; 
 struct alua_port_group* FUNC3 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  alua_rtpg_work ; 
 int /*<<< orphan*/  FUNC4 (struct alua_port_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct alua_port_group* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ optimize_stpg ; 
 int /*<<< orphan*/  port_group_list ; 
 int /*<<< orphan*/  port_group_lock ; 
 scalar_t__ FUNC8 (struct scsi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct alua_port_group *FUNC13(struct scsi_device *sdev,
					     int group_id, int tpgs)
{
	struct alua_port_group *pg, *tmp_pg;

	pg = FUNC6(sizeof(struct alua_port_group), GFP_KERNEL);
	if (!pg)
		return FUNC0(-ENOMEM);

	pg->device_id_len = FUNC8(sdev, pg->device_id_str,
					    sizeof(pg->device_id_str));
	if (pg->device_id_len <= 0) {
		/*
		 * TPGS supported but no device identification found.
		 * Generate private device identification.
		 */
		FUNC9(KERN_INFO, sdev,
			    "%s: No device descriptors found\n",
			    ALUA_DH_NAME);
		pg->device_id_str[0] = '\0';
		pg->device_id_len = 0;
	}
	pg->group_id = group_id;
	pg->tpgs = tpgs;
	pg->state = SCSI_ACCESS_STATE_OPTIMAL;
	pg->valid_states = TPGS_SUPPORT_ALL;
	if (optimize_stpg)
		pg->flags |= ALUA_OPTIMIZE_STPG;
	FUNC5(&pg->kref);
	FUNC1(&pg->rtpg_work, alua_rtpg_work);
	FUNC2(&pg->rtpg_list);
	FUNC2(&pg->node);
	FUNC2(&pg->dh_list);
	FUNC11(&pg->lock);

	FUNC10(&port_group_lock);
	tmp_pg = FUNC3(pg->device_id_str, pg->device_id_len,
				  group_id);
	if (tmp_pg) {
		FUNC12(&port_group_lock);
		FUNC4(pg);
		return tmp_pg;
	}

	FUNC7(&pg->node, &port_group_list);
	FUNC12(&port_group_lock);

	return pg;
}