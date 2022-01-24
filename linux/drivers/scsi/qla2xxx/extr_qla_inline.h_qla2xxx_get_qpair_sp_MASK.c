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
typedef  int /*<<< orphan*/  uint8_t ;
struct qla_qpair {int /*<<< orphan*/  srb_mempool; } ;
typedef  int /*<<< orphan*/  srb_t ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_qpair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_qpair*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qla_qpair*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline srb_t *
FUNC5(scsi_qla_host_t *vha, struct qla_qpair *qpair,
    fc_port_t *fcport, gfp_t flag)
{
	srb_t *sp = NULL;
	uint8_t bail;

	FUNC0(qpair, bail);
	if (FUNC4(bail))
		return NULL;

	sp = FUNC2(qpair->srb_mempool, flag);
	if (sp)
		FUNC3(sp, vha, qpair, fcport);
	else
		FUNC1(qpair);
	return sp;
}