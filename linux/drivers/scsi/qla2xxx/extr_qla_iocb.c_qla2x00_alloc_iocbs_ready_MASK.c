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
struct qla_qpair {int /*<<< orphan*/ * vha; } ;
typedef  int /*<<< orphan*/  srb_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 void* FUNC0 (struct qla_qpair*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void *
FUNC2(struct qla_qpair *qpair, srb_t *sp)
{
	scsi_qla_host_t *vha = qpair->vha;

	if (FUNC1(vha))
		return NULL;

	return FUNC0(qpair, sp);
}