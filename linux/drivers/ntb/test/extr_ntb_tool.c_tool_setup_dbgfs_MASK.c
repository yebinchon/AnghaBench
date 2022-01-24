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
struct tool_ctx {int inspad_cnt; int inmsg_cnt; int peer_cnt; int inmw_cnt; int outmw_cnt; int outspad_cnt; int outmsg_cnt; struct tool_ctx* outmsgs; struct tool_ctx* peers; int /*<<< orphan*/ * dbgfs_dir; struct tool_ctx* outspads; struct tool_ctx* outmws; struct tool_ctx* inmws; struct tool_ctx* inmsgs; struct tool_ctx* inspads; TYPE_1__* ntb; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TOOL_BUF_LEN ; 
 void* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,struct tool_ctx*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  tool_db_event_fops ; 
 int /*<<< orphan*/  tool_db_fops ; 
 int /*<<< orphan*/  tool_db_mask_fops ; 
 int /*<<< orphan*/  tool_db_valid_mask_fops ; 
 int /*<<< orphan*/ * tool_dbgfs_topdir ; 
 int /*<<< orphan*/  tool_inmsg_fops ; 
 int /*<<< orphan*/  tool_link_fops ; 
 int /*<<< orphan*/  tool_msg_event_fops ; 
 int /*<<< orphan*/  tool_msg_inbits_fops ; 
 int /*<<< orphan*/  tool_msg_mask_fops ; 
 int /*<<< orphan*/  tool_msg_outbits_fops ; 
 int /*<<< orphan*/  tool_msg_sts_fops ; 
 int /*<<< orphan*/  tool_mw_trans_fops ; 
 int /*<<< orphan*/  tool_outmsg_fops ; 
 int /*<<< orphan*/  tool_peer_db_fops ; 
 int /*<<< orphan*/  tool_peer_db_mask_fops ; 
 int /*<<< orphan*/  tool_peer_link_event_fops ; 
 int /*<<< orphan*/  tool_peer_link_fops ; 
 int /*<<< orphan*/  tool_peer_mw_trans_fops ; 
 int /*<<< orphan*/  tool_peer_port_fops ; 
 int /*<<< orphan*/  tool_peer_spad_fops ; 
 int /*<<< orphan*/  tool_port_fops ; 
 int /*<<< orphan*/  tool_spad_fops ; 

__attribute__((used)) static void FUNC4(struct tool_ctx *tc)
{
	int pidx, widx, sidx, midx;
	char buf[TOOL_BUF_LEN];

	/* This modules is useless without dbgfs... */
	if (!tool_dbgfs_topdir) {
		tc->dbgfs_dir = NULL;
		return;
	}

	tc->dbgfs_dir = FUNC0(FUNC2(&tc->ntb->dev),
					   tool_dbgfs_topdir);
	if (!tc->dbgfs_dir)
		return;

	FUNC1("port", 0600, tc->dbgfs_dir,
			    tc, &tool_port_fops);

	FUNC1("link", 0600, tc->dbgfs_dir,
			    tc, &tool_link_fops);

	FUNC1("db", 0600, tc->dbgfs_dir,
			    tc, &tool_db_fops);

	FUNC1("db_valid_mask", 0600, tc->dbgfs_dir,
			    tc, &tool_db_valid_mask_fops);

	FUNC1("db_mask", 0600, tc->dbgfs_dir,
			    tc, &tool_db_mask_fops);

	FUNC1("db_event", 0600, tc->dbgfs_dir,
			    tc, &tool_db_event_fops);

	FUNC1("peer_db", 0600, tc->dbgfs_dir,
			    tc, &tool_peer_db_fops);

	FUNC1("peer_db_mask", 0600, tc->dbgfs_dir,
			    tc, &tool_peer_db_mask_fops);

	if (tc->inspad_cnt != 0) {
		for (sidx = 0; sidx < tc->inspad_cnt; sidx++) {
			FUNC3(buf, sizeof(buf), "spad%d", sidx);

			FUNC1(buf, 0600, tc->dbgfs_dir,
					   &tc->inspads[sidx], &tool_spad_fops);
		}
	}

	if (tc->inmsg_cnt != 0) {
		for (midx = 0; midx < tc->inmsg_cnt; midx++) {
			FUNC3(buf, sizeof(buf), "msg%d", midx);
			FUNC1(buf, 0600, tc->dbgfs_dir,
					   &tc->inmsgs[midx], &tool_inmsg_fops);
		}

		FUNC1("msg_sts", 0600, tc->dbgfs_dir,
				    tc, &tool_msg_sts_fops);

		FUNC1("msg_inbits", 0600, tc->dbgfs_dir,
				    tc, &tool_msg_inbits_fops);

		FUNC1("msg_outbits", 0600, tc->dbgfs_dir,
				    tc, &tool_msg_outbits_fops);

		FUNC1("msg_mask", 0600, tc->dbgfs_dir,
				    tc, &tool_msg_mask_fops);

		FUNC1("msg_event", 0600, tc->dbgfs_dir,
				    tc, &tool_msg_event_fops);
	}

	for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
		FUNC3(buf, sizeof(buf), "peer%d", pidx);
		tc->peers[pidx].dbgfs_dir =
			FUNC0(buf, tc->dbgfs_dir);

		FUNC1("port", 0600,
				    tc->peers[pidx].dbgfs_dir,
				    &tc->peers[pidx], &tool_peer_port_fops);

		FUNC1("link", 0200,
				    tc->peers[pidx].dbgfs_dir,
				    &tc->peers[pidx], &tool_peer_link_fops);

		FUNC1("link_event", 0200,
				  tc->peers[pidx].dbgfs_dir,
				  &tc->peers[pidx], &tool_peer_link_event_fops);

		for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++) {
			FUNC3(buf, sizeof(buf), "mw_trans%d", widx);
			FUNC1(buf, 0600,
					    tc->peers[pidx].dbgfs_dir,
					    &tc->peers[pidx].inmws[widx],
					    &tool_mw_trans_fops);
		}

		for (widx = 0; widx < tc->peers[pidx].outmw_cnt; widx++) {
			FUNC3(buf, sizeof(buf), "peer_mw_trans%d", widx);
			FUNC1(buf, 0600,
					    tc->peers[pidx].dbgfs_dir,
					    &tc->peers[pidx].outmws[widx],
					    &tool_peer_mw_trans_fops);
		}

		for (sidx = 0; sidx < tc->peers[pidx].outspad_cnt; sidx++) {
			FUNC3(buf, sizeof(buf), "spad%d", sidx);

			FUNC1(buf, 0600,
					    tc->peers[pidx].dbgfs_dir,
					    &tc->peers[pidx].outspads[sidx],
					    &tool_peer_spad_fops);
		}

		for (midx = 0; midx < tc->peers[pidx].outmsg_cnt; midx++) {
			FUNC3(buf, sizeof(buf), "msg%d", midx);
			FUNC1(buf, 0600,
					    tc->peers[pidx].dbgfs_dir,
					    &tc->peers[pidx].outmsgs[midx],
					    &tool_outmsg_fops);
		}
	}
}