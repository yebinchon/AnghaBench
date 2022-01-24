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
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {unsigned long flags; int /*<<< orphan*/  state; } ;
struct cpl_abort_rpl_rss {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_ABORT_FAILED ; 
 int CXGBI_DBG_SOCK ; 
 int CXGBI_DBG_TOE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct cpl_abort_rpl_rss* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,struct cxgbi_sock*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
	struct cpl_abort_rpl_rss *rpl = FUNC1(skb);
	struct cxgbi_sock *csk = ctx;

	FUNC3(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
		"status 0x%x, csk 0x%p, s %u, 0x%lx.\n",
		rpl->status, csk, csk ? csk->state : 0,
		csk ? csk->flags : 0UL);
	/*
	 * Ignore replies to post-close aborts indicating that the abort was
	 * requested too late.  These connections are terminated when we get
	 * PEER_CLOSE or CLOSE_CON_RPL and by the time the abort_rpl_rss
	 * arrives the TID is either no longer used or it has been recycled.
	 */
	if (rpl->status == CPL_ERR_ABORT_FAILED)
		goto rel_skb;
	/*
	 * Sometimes we've already closed the connection, e.g., a post-close
	 * abort races with ABORT_REQ_RSS, the latter frees the connection
	 * expecting the ABORT_REQ will fail with CPL_ERR_ABORT_FAILED,
	 * but FW turns the ABORT_REQ into a regular one and so we get
	 * ABORT_RPL_RSS with status 0 and no connection.
	 */
	if (csk)
		FUNC2(csk);
rel_skb:
	FUNC0(skb);
	return 0;
}