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
struct TYPE_2__ {scalar_t__ mboxType; scalar_t__ state; } ;
struct lpfc_hba {TYPE_1__ mbox_ext_buf_ctx; } ;
struct lpfc_dmabuf {int dummy; } ;
struct bsg_job {int dummy; } ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 scalar_t__ LPFC_BSG_MBOX_DONE ; 
 scalar_t__ LPFC_BSG_MBOX_HOST ; 
 int SLI_CONFIG_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int FUNC2 (struct lpfc_hba*,struct bsg_job*) ; 
 int FUNC3 (struct lpfc_hba*,struct bsg_job*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ mbox_rd ; 

__attribute__((used)) static int
FUNC5(struct lpfc_hba *phba, struct bsg_job *job,
			     struct lpfc_dmabuf *dmabuf)
{
	int rc;

	FUNC4(phba, KERN_INFO, LOG_LIBDFC,
			"2971 SLI_CONFIG buffer (type:x%x)\n",
			phba->mbox_ext_buf_ctx.mboxType);

	if (phba->mbox_ext_buf_ctx.mboxType == mbox_rd) {
		if (phba->mbox_ext_buf_ctx.state != LPFC_BSG_MBOX_DONE) {
			FUNC4(phba, KERN_ERR, LOG_LIBDFC,
					"2972 SLI_CONFIG rd buffer state "
					"mismatch:x%x\n",
					phba->mbox_ext_buf_ctx.state);
			FUNC1(phba);
			return -EPIPE;
		}
		rc = FUNC2(phba, job);
		if (rc == SLI_CONFIG_HANDLED)
			FUNC0(phba, dmabuf);
	} else { /* phba->mbox_ext_buf_ctx.mboxType == mbox_wr */
		if (phba->mbox_ext_buf_ctx.state != LPFC_BSG_MBOX_HOST) {
			FUNC4(phba, KERN_ERR, LOG_LIBDFC,
					"2973 SLI_CONFIG wr buffer state "
					"mismatch:x%x\n",
					phba->mbox_ext_buf_ctx.state);
			FUNC1(phba);
			return -EPIPE;
		}
		rc = FUNC3(phba, job, dmabuf);
	}
	return rc;
}