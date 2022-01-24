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
typedef  scalar_t__ u32 ;
struct rx_ring {scalar_t__ cnsmr_idx; int /*<<< orphan*/  prod_idx_sh_reg; struct ql_net_rsp_iocb* curr_entry; int /*<<< orphan*/  cq_id; struct ql_adapter* qdev; } ;
struct ql_net_rsp_iocb {int opcode; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct ib_mac_iocb_rsp {int dummy; } ;
struct ib_ae_iocb_rsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
#define  OPCODE_IB_AE_IOCB 129 
#define  OPCODE_IB_MAC_IOCB 128 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,struct ib_ae_iocb_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  rx_status ; 

__attribute__((used)) static int FUNC8(struct rx_ring *rx_ring, int budget)
{
	struct ql_adapter *qdev = rx_ring->qdev;
	u32 prod = FUNC3(rx_ring->prod_idx_sh_reg);
	struct ql_net_rsp_iocb *net_rsp;
	int count = 0;

	/* While there are entries in the completion queue. */
	while (prod != rx_ring->cnsmr_idx) {

		FUNC0(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "cq_id = %d, prod = %d, cnsmr = %d\n",
			     rx_ring->cq_id, prod, rx_ring->cnsmr_idx);

		net_rsp = rx_ring->curr_entry;
		FUNC7();
		switch (net_rsp->opcode) {
		case OPCODE_IB_MAC_IOCB:
			FUNC2(qdev, rx_ring,
					       (struct ib_mac_iocb_rsp *)
					       net_rsp);
			break;

		case OPCODE_IB_AE_IOCB:
			FUNC1(qdev, (struct ib_ae_iocb_rsp *)
						net_rsp);
			break;
		default:
			FUNC0(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "Hit default case, not handled! dropping the packet, opcode = %x.\n",
				     net_rsp->opcode);
			break;
		}
		count++;
		FUNC5(rx_ring);
		prod = FUNC3(rx_ring->prod_idx_sh_reg);
		if (count == budget)
			break;
	}
	FUNC4(qdev, rx_ring);
	FUNC6(rx_ring);
	return count;
}