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
typedef  size_t uint16_t ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct beiscsi_hba {int /*<<< orphan*/ ** conn_table; int /*<<< orphan*/  state; int /*<<< orphan*/ * ep_array; } ;
struct beiscsi_endpoint {int /*<<< orphan*/  openiscsi_ep; int /*<<< orphan*/  ep_cid; struct beiscsi_conn* conn; struct beiscsi_hba* phba; } ;
struct beiscsi_conn {int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*,size_t,...) ; 
 scalar_t__ FUNC2 (struct beiscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct iscsi_endpoint *ep)
{
	struct beiscsi_endpoint *beiscsi_ep;
	struct beiscsi_conn *beiscsi_conn;
	struct beiscsi_hba *phba;
	uint16_t cri_index;

	beiscsi_ep = ep->dd_data;
	phba = beiscsi_ep->phba;
	FUNC5(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_ep_disconnect for ep_cid = %u\n",
		    beiscsi_ep->ep_cid);

	cri_index = FUNC0(beiscsi_ep->ep_cid);
	if (!phba->ep_array[cri_index]) {
		FUNC1(phba, KERN_ERR,
			      "BS_%d : ep_array at %u cid %u empty\n",
			      cri_index,
			      beiscsi_ep->ep_cid);
		return;
	}

	if (beiscsi_ep->conn) {
		beiscsi_conn = beiscsi_ep->conn;
		FUNC7(beiscsi_conn->conn);
	}

	if (!FUNC4(phba)) {
		FUNC5(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : HBA in error 0x%lx\n", phba->state);
	} else {
		/**
		 * Make CID available even if close fails.
		 * If not freed, FW might fail open using the CID.
		 */
		if (FUNC2(beiscsi_ep) < 0)
			FUNC1(phba, KERN_ERR,
				      "BS_%d : close conn failed cid %d\n",
				      beiscsi_ep->ep_cid);
	}

	FUNC3(beiscsi_ep);
	if (!phba->conn_table[cri_index])
		FUNC1(phba, KERN_ERR,
			      "BS_%d : conn_table empty at %u: cid %u\n",
			      cri_index, beiscsi_ep->ep_cid);
	phba->conn_table[cri_index] = NULL;
	FUNC6(beiscsi_ep->openiscsi_ep);
}