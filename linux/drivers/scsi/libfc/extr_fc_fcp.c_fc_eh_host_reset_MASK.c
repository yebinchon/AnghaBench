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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_lport {int /*<<< orphan*/  port_id; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 unsigned long FC_HOST_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC5 (struct Scsi_Host*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

int FUNC7(struct scsi_cmnd *sc_cmd)
{
	struct Scsi_Host *shost = sc_cmd->device->host;
	struct fc_lport *lport = FUNC5(shost);
	unsigned long wait_tmo;

	FUNC0(lport, "Resetting host\n");

	FUNC2(lport);
	wait_tmo = jiffies + FC_HOST_RESET_TIMEOUT;
	while (!FUNC1(lport) && FUNC6(jiffies,
							       wait_tmo))
		FUNC3(1000);

	if (FUNC1(lport)) {
		FUNC4(KERN_INFO, shost, "libfc: Host reset succeeded "
			     "on port (%6.6x)\n", lport->port_id);
		return SUCCESS;
	} else {
		FUNC4(KERN_INFO, shost, "libfc: Host reset failed, "
			     "port (%6.6x) is not ready.\n",
			     lport->port_id);
		return FAILED;
	}
}