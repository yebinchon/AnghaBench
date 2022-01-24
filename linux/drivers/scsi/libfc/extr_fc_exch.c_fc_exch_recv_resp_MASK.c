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
struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  non_bls_resp; int /*<<< orphan*/  xid_not_found; } ;
struct fc_exch_mgr {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 struct fc_seq* FUNC2 (struct fc_exch_mgr*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC3(struct fc_exch_mgr *mp, struct fc_frame *fp)
{
	struct fc_seq *sp;

	sp = FUNC2(mp, fp);	/* doesn't hold sequence */

	if (!sp)
		FUNC0(&mp->stats.xid_not_found);
	else
		FUNC0(&mp->stats.non_bls_resp);

	FUNC1(fp);
}