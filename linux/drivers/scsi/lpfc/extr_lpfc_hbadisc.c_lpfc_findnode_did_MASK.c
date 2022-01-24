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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct lpfc_nodelist* FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

struct lpfc_nodelist *
FUNC4(struct lpfc_vport *vport, uint32_t did)
{
	struct Scsi_Host *shost = FUNC1(vport);
	struct lpfc_nodelist *ndlp;
	unsigned long iflags;

	FUNC2(shost->host_lock, iflags);
	ndlp = FUNC0(vport, did);
	FUNC3(shost->host_lock, iflags);
	return ndlp;
}