#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/ * sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int /*<<< orphan*/  v6_addr; int /*<<< orphan*/  v4_addr; } ;
struct qedi_endpoint {size_t iscsi_cid; scalar_t__ ip_type; size_t handle; int ip_addr_len; int /*<<< orphan*/ * dst_addr; TYPE_2__ dst; int /*<<< orphan*/  pmtu; int /*<<< orphan*/  state; int /*<<< orphan*/  tcp_ofld_wait; int /*<<< orphan*/  ofld_wait; int /*<<< orphan*/  p_doorbell; int /*<<< orphan*/  fw_cid; void* dst_port; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  cdev; struct qedi_endpoint** ep_tbl; int /*<<< orphan*/  num_offloads; int /*<<< orphan*/  ll2_mtu; int /*<<< orphan*/  link_state; int /*<<< orphan*/  flags; } ;
struct iscsi_path {size_t iscsi_cid; scalar_t__ ip_type; size_t handle; int ip_addr_len; int /*<<< orphan*/ * dst_addr; TYPE_2__ dst; int /*<<< orphan*/  pmtu; int /*<<< orphan*/  state; int /*<<< orphan*/  tcp_ofld_wait; int /*<<< orphan*/  ofld_wait; int /*<<< orphan*/  p_doorbell; int /*<<< orphan*/  fw_cid; void* dst_port; struct qedi_ctx* qedi; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  path_req ;
struct TYPE_6__ {int (* acquire_conn ) (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int (* release_conn ) (int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EP_STATE_IDLE ; 
 int /*<<< orphan*/  EP_STATE_OFLDCONN_START ; 
 struct iscsi_endpoint* FUNC0 (int) ; 
 size_t ISCSI_KEVENT_IF_DOWN ; 
 size_t ISCSI_KEVENT_PATH_REQ ; 
 size_t QEDI_CID_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  QEDI_IN_OFFLINE ; 
 int /*<<< orphan*/  QEDI_IN_RECOVERY ; 
 scalar_t__ QEDI_LINK_UP ; 
 int /*<<< orphan*/  QEDI_LOG_CONN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ TCP_IPV4 ; 
 scalar_t__ TCP_IPV6 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct iscsi_endpoint* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_endpoint*) ; 
 struct qedi_ctx* FUNC9 (struct Scsi_Host*) ; 
 int FUNC10 (struct Scsi_Host*,int /*<<< orphan*/ *,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC12 (struct qedi_endpoint*,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct qedi_ctx*,struct qedi_endpoint*) ; 
 scalar_t__ qedi_do_not_recover ; 
 int /*<<< orphan*/  FUNC15 (struct qedi_ctx*,struct qedi_endpoint*) ; 
 int /*<<< orphan*/  qedi_iscsi_transport ; 
 TYPE_3__* qedi_ops ; 
 int FUNC16 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iscsi_endpoint *
FUNC19(struct Scsi_Host *shost, struct sockaddr *dst_addr,
		int non_blocking)
{
	struct qedi_ctx *qedi;
	struct iscsi_endpoint *ep;
	struct qedi_endpoint *qedi_ep;
	struct sockaddr_in *addr;
	struct sockaddr_in6 *addr6;
	struct iscsi_path path_req;
	u32 msg_type = ISCSI_KEVENT_IF_DOWN;
	u32 iscsi_cid = QEDI_CID_RESERVED;
	u16 len = 0;
	char *buf = NULL;
	int ret, tmp;

	if (!shost) {
		ret = -ENXIO;
		FUNC1(NULL, "shost is NULL\n");
		return FUNC0(ret);
	}

	if (qedi_do_not_recover) {
		ret = -ENOMEM;
		return FUNC0(ret);
	}

	qedi = FUNC9(shost);

	if (FUNC18(QEDI_IN_OFFLINE, &qedi->flags) ||
	    FUNC18(QEDI_IN_RECOVERY, &qedi->flags)) {
		ret = -ENOMEM;
		return FUNC0(ret);
	}

	ep = FUNC7(sizeof(struct qedi_endpoint));
	if (!ep) {
		FUNC1(&qedi->dbg_ctx, "endpoint create fail\n");
		ret = -ENOMEM;
		return FUNC0(ret);
	}
	qedi_ep = ep->dd_data;
	FUNC12(qedi_ep, 0, sizeof(struct qedi_endpoint));
	qedi_ep->state = EP_STATE_IDLE;
	qedi_ep->iscsi_cid = (u32)-1;
	qedi_ep->qedi = qedi;

	if (dst_addr->sa_family == AF_INET) {
		addr = (struct sockaddr_in *)dst_addr;
		FUNC11(qedi_ep->dst_addr, &addr->sin_addr.s_addr,
		       sizeof(struct in_addr));
		qedi_ep->dst_port = FUNC13(addr->sin_port);
		qedi_ep->ip_type = TCP_IPV4;
		FUNC2(&qedi->dbg_ctx, QEDI_LOG_CONN,
			  "dst_addr=%pI4, dst_port=%u\n",
			  qedi_ep->dst_addr, qedi_ep->dst_port);
	} else if (dst_addr->sa_family == AF_INET6) {
		addr6 = (struct sockaddr_in6 *)dst_addr;
		FUNC11(qedi_ep->dst_addr, &addr6->sin6_addr,
		       sizeof(struct in6_addr));
		qedi_ep->dst_port = FUNC13(addr6->sin6_port);
		qedi_ep->ip_type = TCP_IPV6;
		FUNC2(&qedi->dbg_ctx, QEDI_LOG_CONN,
			  "dst_addr=%pI6, dst_port=%u\n",
			  qedi_ep->dst_addr, qedi_ep->dst_port);
	} else {
		FUNC1(&qedi->dbg_ctx, "Invalid endpoint\n");
	}

	if (FUNC5(&qedi->link_state) != QEDI_LINK_UP) {
		FUNC3(&qedi->dbg_ctx, "qedi link down\n");
		ret = -ENXIO;
		goto ep_conn_exit;
	}

	ret = FUNC14(qedi, qedi_ep);
	if (ret)
		goto ep_conn_exit;

	ret = qedi_ops->acquire_conn(qedi->cdev, &qedi_ep->handle,
				     &qedi_ep->fw_cid, &qedi_ep->p_doorbell);

	if (ret) {
		FUNC1(&qedi->dbg_ctx, "Could not acquire connection\n");
		ret = -ENXIO;
		goto ep_free_sq;
	}

	iscsi_cid = qedi_ep->handle;
	qedi_ep->iscsi_cid = iscsi_cid;

	FUNC6(&qedi_ep->ofld_wait);
	FUNC6(&qedi_ep->tcp_ofld_wait);
	qedi_ep->state = EP_STATE_OFLDCONN_START;
	qedi->ep_tbl[iscsi_cid] = qedi_ep;

	buf = (char *)&path_req;
	len = sizeof(path_req);
	FUNC12(&path_req, 0, len);

	msg_type = ISCSI_KEVENT_PATH_REQ;
	path_req.handle = (u64)qedi_ep->iscsi_cid;
	path_req.pmtu = qedi->ll2_mtu;
	qedi_ep->pmtu = qedi->ll2_mtu;
	if (qedi_ep->ip_type == TCP_IPV4) {
		FUNC11(&path_req.dst.v4_addr, &qedi_ep->dst_addr,
		       sizeof(struct in_addr));
		path_req.ip_addr_len = 4;
	} else {
		FUNC11(&path_req.dst.v6_addr, &qedi_ep->dst_addr,
		       sizeof(struct in6_addr));
		path_req.ip_addr_len = 16;
	}

	ret = FUNC10(shost, &qedi_iscsi_transport, msg_type, buf,
				 len);
	if (ret) {
		FUNC1(&qedi->dbg_ctx,
			 "iscsi_offload_mesg() failed for cid=0x%x ret=%d\n",
			 iscsi_cid, ret);
		goto ep_rel_conn;
	}

	FUNC4(&qedi->num_offloads);
	return ep;

ep_rel_conn:
	qedi->ep_tbl[iscsi_cid] = NULL;
	tmp = qedi_ops->release_conn(qedi->cdev, qedi_ep->handle);
	if (tmp)
		FUNC3(&qedi->dbg_ctx, "release_conn returned %d\n",
			  tmp);
ep_free_sq:
	FUNC15(qedi, qedi_ep);
ep_conn_exit:
	FUNC8(ep);
	return FUNC0(ret);
}