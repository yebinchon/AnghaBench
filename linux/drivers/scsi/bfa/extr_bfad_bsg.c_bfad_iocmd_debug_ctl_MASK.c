#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_4__ {int /*<<< orphan*/  dbg_fwsave_once; } ;
struct TYPE_5__ {TYPE_1__ ioc; } ;
struct bfad_s {int /*<<< orphan*/  trcmod; TYPE_3__ plog_buf; int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfa_bsg_gen_s {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 unsigned int IOCMD_DEBUG_FW_STATE_CLR ; 
 unsigned int IOCMD_DEBUG_PORTLOG_CLR ; 
 unsigned int IOCMD_DEBUG_START_DTRC ; 
 unsigned int IOCMD_DEBUG_STOP_DTRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
	struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
	unsigned long	flags;

	if (v_cmd == IOCMD_DEBUG_FW_STATE_CLR) {
		FUNC2(&bfad->bfad_lock, flags);
		bfad->bfa.ioc.dbg_fwsave_once = BFA_TRUE;
		FUNC3(&bfad->bfad_lock, flags);
	} else if (v_cmd == IOCMD_DEBUG_PORTLOG_CLR)
		bfad->plog_buf.head = bfad->plog_buf.tail = 0;
	else if (v_cmd == IOCMD_DEBUG_START_DTRC)
		FUNC0(bfad->trcmod);
	else if (v_cmd == IOCMD_DEBUG_STOP_DTRC)
		FUNC1(bfad->trcmod);

	iocmd->status = BFA_STATUS_OK;
	return 0;
}