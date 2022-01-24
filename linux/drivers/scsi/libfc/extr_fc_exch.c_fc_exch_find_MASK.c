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
typedef  scalar_t__ u16 ;
struct fc_lport {int /*<<< orphan*/  port_id; TYPE_1__* host; } ;
struct fc_exch_pool {int /*<<< orphan*/  lock; } ;
struct fc_exch_mgr {scalar_t__ min_xid; scalar_t__ max_xid; int /*<<< orphan*/  pool; struct fc_lport* lport; } ;
struct fc_exch {scalar_t__ xid; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,scalar_t__) ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ fc_cpu_mask ; 
 scalar_t__ fc_cpu_order ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*) ; 
 struct fc_exch* FUNC4 (struct fc_exch_pool*,scalar_t__) ; 
 struct fc_exch fc_quarantine_exch ; 
 scalar_t__ nr_cpu_ids ; 
 struct fc_exch_pool* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fc_exch *FUNC9(struct fc_exch_mgr *mp, u16 xid)
{
	struct fc_lport *lport = mp->lport;
	struct fc_exch_pool *pool;
	struct fc_exch *ep = NULL;
	u16 cpu = xid & fc_cpu_mask;

	if (xid == FC_XID_UNKNOWN)
		return NULL;

	if (cpu >= nr_cpu_ids || !FUNC2(cpu)) {
		FUNC6("host%u: lport %6.6x: xid %d invalid CPU %d\n:",
		       lport->host->host_no, lport->port_id, xid, cpu);
		return NULL;
	}

	if ((xid >= mp->min_xid) && (xid <= mp->max_xid)) {
		pool = FUNC5(mp->pool, cpu);
		FUNC7(&pool->lock);
		ep = FUNC4(pool, (xid - mp->min_xid) >> fc_cpu_order);
		if (ep == &fc_quarantine_exch) {
			FUNC0(lport, "xid %x quarantined\n", xid);
			ep = NULL;
		}
		if (ep) {
			FUNC1(ep->xid != xid);
			FUNC3(ep);
		}
		FUNC8(&pool->lock);
	}
	return ep;
}