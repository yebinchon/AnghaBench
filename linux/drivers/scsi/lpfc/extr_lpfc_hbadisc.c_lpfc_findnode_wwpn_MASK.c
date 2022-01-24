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
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_name {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct lpfc_nodelist* FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_name*) ; 
 int /*<<< orphan*/  lpfc_filter_by_wwpn ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct lpfc_nodelist *
FUNC4(struct lpfc_vport *vport, struct lpfc_name *wwpn)
{
	struct Scsi_Host *shost = FUNC1(vport);
	struct lpfc_nodelist *ndlp;

	FUNC2(shost->host_lock);
	ndlp = FUNC0(vport, lpfc_filter_by_wwpn, wwpn);
	FUNC3(shost->host_lock);
	return ndlp;
}