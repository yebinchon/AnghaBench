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
typedef  int /*<<< orphan*/  uint64_t ;
struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct iscsi_conn {struct bnx2i_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct bnx2i_hba {int /*<<< orphan*/  cnic_dev_type; TYPE_1__* netdev; } ;
struct bnx2i_endpoint {scalar_t__ state; struct bnx2i_hba* hba; int /*<<< orphan*/  ep_iscsi_cid; int /*<<< orphan*/  ep_cid; struct bnx2i_conn* conn; } ;
struct bnx2i_conn {struct bnx2i_endpoint* ep; int /*<<< orphan*/  fw_cid; int /*<<< orphan*/  iscsi_conn_cid; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2I_NX2_DEV_57710 ; 
 int /*<<< orphan*/  CNIC_ARM_CQE ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ EP_STATE_TCP_FIN_RCVD ; 
 scalar_t__ EP_STATE_TCP_RST_RCVD ; 
 int /*<<< orphan*/  KERN_ALERT ; 
 scalar_t__ FUNC0 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_endpoint*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnx2i_hba*,struct bnx2i_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2i_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,struct bnx2i_endpoint*,...) ; 
 struct bnx2i_hba* FUNC6 (struct Scsi_Host*) ; 
 struct iscsi_endpoint* FUNC7 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (struct iscsi_cls_session*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iscsi_cls_session *cls_session,
			   struct iscsi_cls_conn *cls_conn,
			   uint64_t transport_fd, int is_leading)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct bnx2i_conn *bnx2i_conn = conn->dd_data;
	struct Scsi_Host *shost = FUNC8(cls_session);
	struct bnx2i_hba *hba = FUNC6(shost);
	struct bnx2i_endpoint *bnx2i_ep;
	struct iscsi_endpoint *ep;
	int ret_code;

	ep = FUNC7(transport_fd);
	if (!ep)
		return -EINVAL;
	/*
	 * Forcefully terminate all in progress connection recovery at the
	 * earliest, either in bind(), send_pdu(LOGIN), or conn_start()
	 */
	if (FUNC0(hba))
		return -EIO;

	bnx2i_ep = ep->dd_data;
	if ((bnx2i_ep->state == EP_STATE_TCP_FIN_RCVD) ||
	    (bnx2i_ep->state == EP_STATE_TCP_RST_RCVD))
		/* Peer disconnect via' FIN or RST */
		return -EINVAL;

	if (FUNC4(cls_session, cls_conn, is_leading))
		return -EINVAL;

	if (bnx2i_ep->hba != hba) {
		/* Error - TCP connection does not belong to this device
		 */
		FUNC5(KERN_ALERT, cls_conn->dd_data,
				  "conn bind, ep=0x%p (%s) does not",
				  bnx2i_ep, bnx2i_ep->hba->netdev->name);
		FUNC5(KERN_ALERT, cls_conn->dd_data,
				  "belong to hba (%s)\n",
				  hba->netdev->name);
		return -EEXIST;
	}
	bnx2i_ep->conn = bnx2i_conn;
	bnx2i_conn->ep = bnx2i_ep;
	bnx2i_conn->iscsi_conn_cid = bnx2i_ep->ep_iscsi_cid;
	bnx2i_conn->fw_cid = bnx2i_ep->ep_cid;

	ret_code = FUNC2(hba, bnx2i_conn,
						bnx2i_ep->ep_iscsi_cid);

	/* 5706/5708/5709 FW takes RQ as full when initiated, but for 57710
	 * driver needs to explicitly replenish RQ index during setup.
	 */
	if (FUNC9(BNX2I_NX2_DEV_57710, &bnx2i_ep->hba->cnic_dev_type))
		FUNC3(bnx2i_conn, 0);

	FUNC1(bnx2i_conn->ep, CNIC_ARM_CQE);
	return ret_code;
}