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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct bfi_phy_write_rsp_s {int /*<<< orphan*/  status; } ;
struct bfi_phy_stats_rsp_s {int /*<<< orphan*/  status; } ;
struct bfi_phy_read_rsp_s {int /*<<< orphan*/  length; int /*<<< orphan*/  status; } ;
struct bfi_phy_query_rsp_s {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfa_phy_stats_s {int status; } ;
struct bfa_phy_s {int ubuf; int status; int residue; int offset; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  op_busy; scalar_t__ dbuf_kva; } ;
struct bfa_phy_attr_s {int status; int length; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
#define  BFI_PHY_I2H_QUERY_RSP 131 
#define  BFI_PHY_I2H_READ_RSP 130 
#define  BFI_PHY_I2H_STATS_RSP 129 
#define  BFI_PHY_I2H_WRITE_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_phy_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_phy_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_phy_s*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void
FUNC12(void *phyarg, struct bfi_mbmsg_s *msg)
{
	struct bfa_phy_s *phy = phyarg;
	u32	status;

	union {
		struct bfi_phy_query_rsp_s *query;
		struct bfi_phy_stats_rsp_s *stats;
		struct bfi_phy_write_rsp_s *write;
		struct bfi_phy_read_rsp_s *read;
		struct bfi_mbmsg_s   *msg;
	} m;

	m.msg = msg;
	FUNC6(phy, msg->mh.msg_id);

	if (!phy->op_busy) {
		/* receiving response after ioc failure */
		FUNC6(phy, 0x9999);
		return;
	}

	switch (msg->mh.msg_id) {
	case BFI_PHY_I2H_QUERY_RSP:
		status = FUNC2(m.query->status);
		FUNC6(phy, status);

		if (status == BFA_STATUS_OK) {
			struct bfa_phy_attr_s *attr =
				(struct bfa_phy_attr_s *) phy->ubuf;
			FUNC3((u32 *)attr, (u32 *)phy->dbuf_kva,
					sizeof(struct bfa_phy_attr_s));
			FUNC6(phy, attr->status);
			FUNC6(phy, attr->length);
		}

		phy->status = status;
		phy->op_busy = 0;
		if (phy->cbfn)
			phy->cbfn(phy->cbarg, phy->status);
		break;
	case BFI_PHY_I2H_STATS_RSP:
		status = FUNC2(m.stats->status);
		FUNC6(phy, status);

		if (status == BFA_STATUS_OK) {
			struct bfa_phy_stats_s *stats =
				(struct bfa_phy_stats_s *) phy->ubuf;
			FUNC3((u32 *)stats, (u32 *)phy->dbuf_kva,
				sizeof(struct bfa_phy_stats_s));
			FUNC6(phy, stats->status);
		}

		phy->status = status;
		phy->op_busy = 0;
		if (phy->cbfn)
			phy->cbfn(phy->cbarg, phy->status);
		break;
	case BFI_PHY_I2H_WRITE_RSP:
		status = FUNC2(m.write->status);
		FUNC6(phy, status);

		if (status != BFA_STATUS_OK || phy->residue == 0) {
			phy->status = status;
			phy->op_busy = 0;
			if (phy->cbfn)
				phy->cbfn(phy->cbarg, phy->status);
		} else {
			FUNC6(phy, phy->offset);
			FUNC5(phy);
		}
		break;
	case BFI_PHY_I2H_READ_RSP:
		status = FUNC2(m.read->status);
		FUNC6(phy, status);

		if (status != BFA_STATUS_OK) {
			phy->status = status;
			phy->op_busy = 0;
			if (phy->cbfn)
				phy->cbfn(phy->cbarg, phy->status);
		} else {
			u32 len = FUNC2(m.read->length);
			u16 *buf = (u16 *)(phy->ubuf + phy->offset);
			u16 *dbuf = (u16 *)phy->dbuf_kva;
			int i, sz = len >> 1;

			FUNC6(phy, phy->offset);
			FUNC6(phy, len);

			for (i = 0; i < sz; i++)
				buf[i] = FUNC1(dbuf[i]);

			phy->residue -= len;
			phy->offset += len;

			if (phy->residue == 0) {
				phy->status = status;
				phy->op_busy = 0;
				if (phy->cbfn)
					phy->cbfn(phy->cbarg, phy->status);
			} else
				FUNC4(phy);
		}
		break;
	default:
		FUNC0(1);
	}
}