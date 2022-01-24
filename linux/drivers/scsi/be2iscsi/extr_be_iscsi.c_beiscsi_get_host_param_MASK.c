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
struct beiscsi_hba {int /*<<< orphan*/  state; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
#define  ISCSI_HOST_PARAM_HWADDRESS 131 
#define  ISCSI_HOST_PARAM_INITIATOR_NAME 130 
#define  ISCSI_HOST_PARAM_PORT_SPEED 129 
#define  ISCSI_HOST_PARAM_PORT_STATE 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC0 (struct beiscsi_hba*,char*,int) ; 
 int FUNC1 (char*,struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (struct Scsi_Host*) ; 
 char* FUNC7 (struct Scsi_Host*) ; 
 int FUNC8 (struct Scsi_Host*,int,char*) ; 
 struct beiscsi_hba* FUNC9 (struct Scsi_Host*) ; 
 int FUNC10 (char*,char*,char*) ; 

int FUNC11(struct Scsi_Host *shost,
			   enum iscsi_host_param param, char *buf)
{
	struct beiscsi_hba *phba = FUNC9(shost);
	int status = 0;

	if (!FUNC4(phba)) {
		FUNC5(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : HBA in error 0x%lx\n", phba->state);
		return 0;
	}
	FUNC5(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_get_host_param, param = %d\n", param);

	switch (param) {
	case ISCSI_HOST_PARAM_HWADDRESS:
		status = FUNC1(buf, phba);
		if (status < 0) {
			FUNC5(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
				    "BS_%d : beiscsi_get_macaddr Failed\n");
			return 0;
		}
		break;
	case ISCSI_HOST_PARAM_INITIATOR_NAME:
		/* try fetching user configured name first */
		status = FUNC0(phba, buf, true);
		if (status < 0) {
			status = FUNC0(phba, buf, false);
			if (status < 0) {
				FUNC5(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
					    "BS_%d : Retrieving Initiator Name Failed\n");
				status = 0;
			}
		}
		break;
	case ISCSI_HOST_PARAM_PORT_STATE:
		FUNC3(shost);
		status = FUNC10(buf, "%s\n", FUNC7(shost));
		break;
	case ISCSI_HOST_PARAM_PORT_SPEED:
		FUNC2(shost);
		status = FUNC10(buf, "%s\n", FUNC6(shost));
		break;
	default:
		return FUNC8(shost, param, buf);
	}
	return status;
}