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
struct afs_vol_interest {scalar_t__ usage; TYPE_1__* server; int /*<<< orphan*/  srv_link; struct afs_vol_interest* vol_interest; int /*<<< orphan*/  cb_vlink; } ;
struct afs_net {int dummy; } ;
struct afs_cb_interest {scalar_t__ usage; TYPE_1__* server; int /*<<< orphan*/  srv_link; struct afs_cb_interest* vol_interest; int /*<<< orphan*/  cb_vlink; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_break_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_net*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_server_trace_put_cbi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vol_interest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct afs_net *net, struct afs_cb_interest *cbi)
{
	struct afs_vol_interest *vi;

	if (cbi && FUNC5(&cbi->usage)) {
		if (!FUNC3(&cbi->cb_vlink)) {
			FUNC6(&cbi->server->cb_break_lock);

			FUNC2(&cbi->cb_vlink);
			vi = cbi->vol_interest;
			cbi->vol_interest = NULL;
			if (--vi->usage == 0)
				FUNC1(&vi->srv_link);
			else
				vi = NULL;

			FUNC7(&cbi->server->cb_break_lock);
			if (vi)
				FUNC4(vi, rcu);
			FUNC0(net, cbi->server, afs_server_trace_put_cbi);
		}
		FUNC4(cbi, rcu);
	}
}