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
struct lpfc_vport {int /*<<< orphan*/  gidft_inp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_PT_N_PORT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  SLI_CTNS_GID_PT ; 
 scalar_t__ FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 

int
FUNC2(struct lpfc_vport *vport)
{
	/* Good status, issue CT Request to NameServer */
	if (FUNC0(vport, SLI_CTNS_GID_PT, 0, GID_PT_N_PORT)) {
		/* Cannot issue NameServer FCP Query, so finish up
		 * discovery
		 */
		FUNC1(vport, KERN_ERR, LOG_SLI,
				 "0606 %s Port TYPE %x %s\n",
				 "Failed to issue GID_PT to ",
				 GID_PT_N_PORT,
				 "Finishing discovery.");
		return 0;
	}
	vport->gidft_inp++;
	return 1;
}