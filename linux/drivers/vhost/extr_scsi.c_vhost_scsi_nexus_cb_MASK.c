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
struct vhost_scsi_cmd {void* tvc_prot_sgl; void* tvc_upages; void* tvc_sgl; } ;
struct se_session {scalar_t__ sess_cmd_map; } ;
struct se_portal_group {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int VHOST_SCSI_DEFAULT_TAGS ; 
 int /*<<< orphan*/  VHOST_SCSI_PREALLOC_PROT_SGLS ; 
 int /*<<< orphan*/  VHOST_SCSI_PREALLOC_SGLS ; 
 int /*<<< orphan*/  VHOST_SCSI_PREALLOC_UPAGES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_session*) ; 

__attribute__((used)) static int FUNC3(struct se_portal_group *se_tpg,
			       struct se_session *se_sess, void *p)
{
	struct vhost_scsi_cmd *tv_cmd;
	unsigned int i;

	for (i = 0; i < VHOST_SCSI_DEFAULT_TAGS; i++) {
		tv_cmd = &((struct vhost_scsi_cmd *)se_sess->sess_cmd_map)[i];

		tv_cmd->tvc_sgl = FUNC0(VHOST_SCSI_PREALLOC_SGLS,
					  sizeof(struct scatterlist),
					  GFP_KERNEL);
		if (!tv_cmd->tvc_sgl) {
			FUNC1("Unable to allocate tv_cmd->tvc_sgl\n");
			goto out;
		}

		tv_cmd->tvc_upages = FUNC0(VHOST_SCSI_PREALLOC_UPAGES,
					     sizeof(struct page *),
					     GFP_KERNEL);
		if (!tv_cmd->tvc_upages) {
			FUNC1("Unable to allocate tv_cmd->tvc_upages\n");
			goto out;
		}

		tv_cmd->tvc_prot_sgl = FUNC0(VHOST_SCSI_PREALLOC_PROT_SGLS,
					       sizeof(struct scatterlist),
					       GFP_KERNEL);
		if (!tv_cmd->tvc_prot_sgl) {
			FUNC1("Unable to allocate tv_cmd->tvc_prot_sgl\n");
			goto out;
		}
	}
	return 0;
out:
	FUNC2(se_sess);
	return -ENOMEM;
}