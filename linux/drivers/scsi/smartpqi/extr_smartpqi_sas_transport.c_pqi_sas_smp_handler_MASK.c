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
struct TYPE_4__ {scalar_t__ device_type; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct pqi_raid_error_info {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ payload_len; int sg_cnt; } ;
struct TYPE_5__ {int sg_cnt; } ;
struct bsg_job {TYPE_3__ reply_payload; TYPE_2__ request_payload; } ;
struct bmic_csmi_smp_passthru_buffer {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ SAS_FANOUT_EXPANDER_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job*,int,unsigned int) ; 
 struct bmic_csmi_smp_passthru_buffer* FUNC1 (struct sas_rphy*,struct bsg_job*) ; 
 unsigned int FUNC2 (struct bmic_csmi_smp_passthru_buffer*,struct bsg_job*,struct pqi_raid_error_info*) ; 
 int FUNC3 (struct pqi_ctrl_info*,struct bmic_csmi_smp_passthru_buffer*,int,struct pqi_raid_error_info*) ; 
 scalar_t__ FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*) ; 
 struct pqi_ctrl_info* FUNC8 (struct Scsi_Host*) ; 

void FUNC9(struct bsg_job *job, struct Scsi_Host *shost,
	struct sas_rphy *rphy)
{
	int rc;
	struct pqi_ctrl_info *ctrl_info = FUNC8(shost);
	struct bmic_csmi_smp_passthru_buffer *smp_buf;
	struct pqi_raid_error_info error_info;
	unsigned int reslen = 0;

	FUNC5(ctrl_info);

	if (job->reply_payload.payload_len == 0) {
		rc = -ENOMEM;
		goto out;
	}

	if (!rphy) {
		rc = -EINVAL;
		goto out;
	}

	if (rphy->identify.device_type != SAS_FANOUT_EXPANDER_DEVICE) {
		rc = -EINVAL;
		goto out;
	}

	if (job->request_payload.sg_cnt > 1 || job->reply_payload.sg_cnt > 1) {
		rc = -EINVAL;
		goto out;
	}

	if (FUNC6(ctrl_info)) {
		rc = -ENXIO;
		goto out;
	}

	if (FUNC4(ctrl_info)) {
		rc = -EBUSY;
		goto out;
	}

	smp_buf = FUNC1(rphy, job);
	if (!smp_buf) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC3(ctrl_info, smp_buf, sizeof(*smp_buf),
		&error_info);
	if (rc)
		goto out;

	reslen = FUNC2(smp_buf, job, &error_info);
out:
	FUNC0(job, rc, reslen);
	FUNC7(ctrl_info);
}