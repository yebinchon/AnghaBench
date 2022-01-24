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
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_boot_target_resp {unsigned int boot_session_handle; int /*<<< orphan*/  boot_session_count; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_INIT ; 
 unsigned int BE_BOOT_INVALID_SHANDLE ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned int FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,int /*<<< orphan*/ *) ; 
 struct be_cmd_get_boot_target_resp* FUNC4 (struct be_mcc_wrb*) ; 

int FUNC5(struct beiscsi_hba *phba, unsigned int *s_handle)
{
	struct be_cmd_get_boot_target_resp *boot_resp;
	struct be_mcc_wrb *wrb;
	unsigned int tag;
	int rc;

	*s_handle = BE_BOOT_INVALID_SHANDLE;
	/* get configured boot session count and handle */
	tag = FUNC0(phba, 0);
	if (!tag) {
		FUNC2(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_INIT,
			    "BG_%d : Getting Boot Target Info Failed\n");
		return -EAGAIN;
	}

	rc = FUNC3(phba, tag, &wrb, NULL);
	if (rc) {
		FUNC2(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_CONFIG,
			    "BG_%d : MBX CMD get_boot_target Failed\n");
		return -EBUSY;
	}

	boot_resp = FUNC4(wrb);
	/* check if there are any boot targets configured */
	if (!boot_resp->boot_session_count) {
		FUNC1(phba, KERN_INFO,
			      "BG_%d : No boot targets configured\n");
		return -ENXIO;
	}

	/* only if FW has logged in to the boot target, s_handle is valid */
	*s_handle = boot_resp->boot_session_handle;
	return 1;
}