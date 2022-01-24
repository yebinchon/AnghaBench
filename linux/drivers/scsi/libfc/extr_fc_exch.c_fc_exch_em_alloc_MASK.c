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
typedef  int u16 ;
struct fc_lport {int dummy; } ;
struct fc_exch_pool {scalar_t__ left; scalar_t__ right; int next_index; int /*<<< orphan*/  lock; int /*<<< orphan*/  total_exches; int /*<<< orphan*/  ex_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_free_exch_xid; int /*<<< orphan*/  no_free_exch; } ;
struct fc_exch_mgr {int pool_max_index; int /*<<< orphan*/  ep_pool; TYPE_1__ stats; int /*<<< orphan*/  class; scalar_t__ min_xid; int /*<<< orphan*/  pool; } ;
struct fc_exch {int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  resp_wq; scalar_t__ resp_active; int /*<<< orphan*/  class; scalar_t__ rxid; int /*<<< orphan*/  f_ctl; struct fc_lport* lp; struct fc_exch_pool* pool; struct fc_exch_mgr* em; scalar_t__ xid; scalar_t__ oxid; int /*<<< orphan*/  seq_id; int /*<<< orphan*/  ex_list; int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FC_FIRST_SEQ ; 
 scalar_t__ FC_XID_UNKNOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int fc_cpu_order ; 
 int /*<<< orphan*/  FUNC3 (struct fc_exch*) ; 
 scalar_t__ FUNC4 (struct fc_exch_pool*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_exch_pool*,int,struct fc_exch*) ; 
 int /*<<< orphan*/  fc_exch_timeout ; 
 int /*<<< orphan*/  FUNC6 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fc_exch* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_exch*,int /*<<< orphan*/ ,int) ; 
 struct fc_exch_pool* FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fc_exch *FUNC18(struct fc_lport *lport,
					struct fc_exch_mgr *mp)
{
	struct fc_exch *ep;
	unsigned int cpu;
	u16 index;
	struct fc_exch_pool *pool;

	/* allocate memory for exchange */
	ep = FUNC10(mp->ep_pool, GFP_ATOMIC);
	if (!ep) {
		FUNC2(&mp->stats.no_free_exch);
		goto out;
	}
	FUNC12(ep, 0, sizeof(*ep));

	cpu = FUNC7();
	pool = FUNC13(mp->pool, cpu);
	FUNC15(&pool->lock);
	FUNC14();

	/* peek cache of free slot */
	if (pool->left != FC_XID_UNKNOWN) {
		if (!FUNC1(FUNC4(pool, pool->left))) {
			index = pool->left;
			pool->left = FC_XID_UNKNOWN;
			goto hit;
		}
	}
	if (pool->right != FC_XID_UNKNOWN) {
		if (!FUNC1(FUNC4(pool, pool->right))) {
			index = pool->right;
			pool->right = FC_XID_UNKNOWN;
			goto hit;
		}
	}

	index = pool->next_index;
	/* allocate new exch from pool */
	while (FUNC4(pool, index)) {
		index = index == mp->pool_max_index ? 0 : index + 1;
		if (index == pool->next_index)
			goto err;
	}
	pool->next_index = index == mp->pool_max_index ? 0 : index + 1;
hit:
	FUNC3(ep);	/* hold for exch in mp */
	FUNC16(&ep->ex_lock);
	/*
	 * Hold exch lock for caller to prevent fc_exch_reset()
	 * from releasing exch	while fc_exch_alloc() caller is
	 * still working on exch.
	 */
	FUNC15(&ep->ex_lock);

	FUNC5(pool, index, ep);
	FUNC9(&ep->ex_list, &pool->ex_list);
	FUNC6(ep, ep->seq_id++);
	pool->total_exches++;
	FUNC17(&pool->lock);

	/*
	 *  update exchange
	 */
	ep->oxid = ep->xid = (index << fc_cpu_order | cpu) + mp->min_xid;
	ep->em = mp;
	ep->pool = pool;
	ep->lp = lport;
	ep->f_ctl = FC_FC_FIRST_SEQ;	/* next seq is first seq */
	ep->rxid = FC_XID_UNKNOWN;
	ep->class = mp->class;
	ep->resp_active = 0;
	FUNC8(&ep->resp_wq);
	FUNC0(&ep->timeout_work, fc_exch_timeout);
out:
	return ep;
err:
	FUNC17(&pool->lock);
	FUNC2(&mp->stats.no_free_exch_xid);
	FUNC11(ep, mp->ep_pool);
	return NULL;
}