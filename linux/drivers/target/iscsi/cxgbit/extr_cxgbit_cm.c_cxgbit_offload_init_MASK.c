#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct port_info {int /*<<< orphan*/  smt_idx; } ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct neighbour {int nud_state; TYPE_2__* dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct cxgbit_sock {int txq_idx; int ctrlq_idx; int port_id; int /*<<< orphan*/  rss_qid; int /*<<< orphan*/  smac_idx; void* tx_chan; int /*<<< orphan*/  mtu; void* l2t; scalar_t__ dcb_priority; } ;
struct TYPE_3__ {int ntxq; int nchan; int nrxq; int nports; int /*<<< orphan*/ * rxq_ids; int /*<<< orphan*/  l2t; } ;
struct cxgbit_device {TYPE_1__ lldi; int /*<<< orphan*/ ** selectq; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NUD_VALID ; 
 void* FUNC1 (int /*<<< orphan*/ ,struct neighbour*,struct net_device*,scalar_t__) ; 
 void* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*,int) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (TYPE_2__*) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC9 (struct cxgbit_sock*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct dst_entry*) ; 
 struct neighbour* FUNC11 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct neighbour*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int
FUNC17(struct cxgbit_sock *csk, int iptype, __u8 *peer_ip,
		    u16 local_port, struct dst_entry *dst,
		    struct cxgbit_device *cdev)
{
	struct neighbour *n;
	int ret, step;
	struct net_device *ndev;
	u16 rxq_idx, port_id;
#ifdef CONFIG_CHELSIO_T4_DCB
	u8 priority = 0;
#endif

	n = FUNC11(dst, peer_ip);
	if (!n)
		return -ENODEV;

	FUNC15();
	if (!(n->nud_state & NUD_VALID))
		FUNC12(n, NULL);

	ret = -ENOMEM;
	if (n->dev->flags & IFF_LOOPBACK) {
		if (iptype == 4)
			ndev = FUNC7(*(__be32 *)peer_ip);
		else if (FUNC0(CONFIG_IPV6))
			ndev = FUNC8((struct in6_addr *)peer_ip);
		else
			ndev = NULL;

		if (!ndev) {
			ret = -ENODEV;
			goto out;
		}

		csk->l2t = FUNC1(cdev->lldi.l2t,
					 n, ndev, 0);
		if (!csk->l2t)
			goto out;
		csk->mtu = ndev->mtu;
		csk->tx_chan = FUNC2(ndev);
		csk->smac_idx =
			       ((struct port_info *)FUNC14(ndev))->smt_idx;
		step = cdev->lldi.ntxq /
			cdev->lldi.nchan;
		csk->txq_idx = FUNC3(ndev) * step;
		step = cdev->lldi.nrxq /
			cdev->lldi.nchan;
		csk->ctrlq_idx = FUNC3(ndev);
		csk->rss_qid = cdev->lldi.rxq_ids[
				FUNC3(ndev) * step];
		csk->port_id = FUNC3(ndev);
		FUNC9(csk,
				      (struct port_info *)FUNC14(ndev));
	} else {
		ndev = FUNC6(n->dev);
		if (!ndev) {
			ret = -ENODEV;
			goto out;
		}

#ifdef CONFIG_CHELSIO_T4_DCB
		if (cxgbit_get_iscsi_dcb_state(ndev))
			priority = cxgbit_get_iscsi_dcb_priority(ndev,
								 local_port);

		csk->dcb_priority = priority;

		csk->l2t = cxgb4_l2t_get(cdev->lldi.l2t, n, ndev, priority);
#else
		csk->l2t = FUNC1(cdev->lldi.l2t, n, ndev, 0);
#endif
		if (!csk->l2t)
			goto out;
		port_id = FUNC3(ndev);
		csk->mtu = FUNC10(dst);
		csk->tx_chan = FUNC2(ndev);
		csk->smac_idx =
			       ((struct port_info *)FUNC14(ndev))->smt_idx;
		step = cdev->lldi.ntxq /
			cdev->lldi.nports;
		csk->txq_idx = (port_id * step) +
				(cdev->selectq[port_id][0]++ % step);
		csk->ctrlq_idx = FUNC3(ndev);
		step = cdev->lldi.nrxq /
			cdev->lldi.nports;
		rxq_idx = (port_id * step) +
				(cdev->selectq[port_id][1]++ % step);
		csk->rss_qid = cdev->lldi.rxq_ids[rxq_idx];
		csk->port_id = port_id;
		FUNC9(csk,
				      (struct port_info *)FUNC14(ndev));
	}
	ret = 0;
out:
	FUNC16();
	FUNC13(n);
	return ret;
}