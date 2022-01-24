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
struct scsi_qla_host {scalar_t__ marker_needed; int /*<<< orphan*/  vp_idx; } ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_tgt ; 
 int FUNC1 (struct scsi_qla_host*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct scsi_qla_host *vha, int vha_locked)
{
	/* Send marker if required */
	if (FUNC2(vha->marker_needed != 0)) {
		int rc = FUNC1(vha, vha_locked);

		if (rc != QLA_SUCCESS) {
			FUNC0(ql_dbg_tgt, vha, 0xe03d,
			    "qla_target(%d): issue_marker() failed\n",
			    vha->vp_idx);
		}
		return rc;
	}
	return QLA_SUCCESS;
}