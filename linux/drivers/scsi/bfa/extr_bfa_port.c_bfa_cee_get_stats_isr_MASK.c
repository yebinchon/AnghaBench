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
typedef  int /*<<< orphan*/  u32 ;
struct bfa_cee_stats_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_stats_cbarg; int /*<<< orphan*/  (* get_stats_cbfn ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  kva; } ;
struct bfa_cee_s {TYPE_2__ cbfn; int /*<<< orphan*/  get_stats_pending; scalar_t__ stats; TYPE_1__ stats_dma; scalar_t__ get_stats_status; } ;
typedef  scalar_t__ bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_cee_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct bfa_cee_s *cee, bfa_status_t status)
{
	u32 *buffer;
	int i;

	cee->get_stats_status = status;
	FUNC0(cee, 0);
	if (status == BFA_STATUS_OK) {
		FUNC0(cee, 0);
		FUNC2(cee->stats, cee->stats_dma.kva,
			sizeof(struct bfa_cee_stats_s));
		/* swap the cee stats */
		buffer = (u32 *)cee->stats;
		for (i = 0; i < (sizeof(struct bfa_cee_stats_s) /
				 sizeof(u32)); i++)
			buffer[i] = FUNC1(buffer[i]);
	}
	cee->get_stats_pending = BFA_FALSE;
	FUNC0(cee, 0);
	if (cee->cbfn.get_stats_cbfn) {
		FUNC0(cee, 0);
		cee->cbfn.get_stats_cbfn(cee->cbfn.get_stats_cbarg, status);
	}
}