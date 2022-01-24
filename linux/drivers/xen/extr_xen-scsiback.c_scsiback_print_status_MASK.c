#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vscsibk_pend {int /*<<< orphan*/ * cmnd; TYPE_2__* v2p; } ;
struct scsiback_tpg {TYPE_1__* tport; } ;
struct TYPE_4__ {int /*<<< orphan*/  lun; struct scsiback_tpg* tpg; } ;
struct TYPE_3__ {int /*<<< orphan*/  tport_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(char *sense_buffer, int errors,
					struct vscsibk_pend *pending_req)
{
	struct scsiback_tpg *tpg = pending_req->v2p->tpg;

	FUNC3("[%s:%d] cmnd[0]=%02x -> st=%02x msg=%02x host=%02x drv=%02x\n",
	       tpg->tport->tport_name, pending_req->v2p->lun,
	       pending_req->cmnd[0], FUNC4(errors), FUNC2(errors),
	       FUNC1(errors), FUNC0(errors));
}