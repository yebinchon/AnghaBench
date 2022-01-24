#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct rtable {int rt_flags; struct dst_entry dst; } ;
struct net_device {int flags; unsigned int mtu; int /*<<< orphan*/  name; } ;
struct neighbour {struct net_device* dev; } ;
struct flowi4 {int /*<<< orphan*/  saddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_10__ {TYPE_4__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int port_id; unsigned int mtu; TYPE_5__ saddr; TYPE_3__ daddr; int /*<<< orphan*/  csk_family; struct dst_entry* dst; struct cxgbi_device* cdev; } ;
struct cxgbi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int CXGBI_DBG_SOCK ; 
 int ENETDOWN ; 
 int ENETUNREACH ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct cxgbi_sock* FUNC0 (int) ; 
 int IFF_LOOPBACK ; 
 int IFF_UP ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 struct cxgbi_device* FUNC3 (struct net_device*,int*) ; 
 struct cxgbi_device* FUNC4 (struct net_device*,int*) ; 
 struct cxgbi_sock* FUNC5 (struct cxgbi_device*) ; 
 struct neighbour* FUNC6 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 struct rtable* FUNC7 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,...) ; 

__attribute__((used)) static struct cxgbi_sock *
FUNC15(struct sockaddr *dst_addr, int ifindex)
{
	struct sockaddr_in *daddr = (struct sockaddr_in *)dst_addr;
	struct dst_entry *dst;
	struct net_device *ndev;
	struct cxgbi_device *cdev;
	struct rtable *rt = NULL;
	struct neighbour *n;
	struct flowi4 fl4;
	struct cxgbi_sock *csk = NULL;
	unsigned int mtu = 0;
	int port = 0xFFFF;
	int err = 0;

	rt = FUNC7(&fl4, 0, daddr->sin_addr.s_addr, 0,
			     daddr->sin_port, 0, ifindex);
	if (!rt) {
		FUNC14("no route to ipv4 0x%x, port %u.\n",
			FUNC2(daddr->sin_addr.s_addr),
			FUNC1(daddr->sin_port));
		err = -ENETUNREACH;
		goto err_out;
	}
	dst = &rt->dst;
	n = FUNC6(dst, &daddr->sin_addr.s_addr);
	if (!n) {
		err = -ENODEV;
		goto rel_rt;
	}
	ndev = n->dev;

	if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
		FUNC14("multi-cast route %pI4, port %u, dev %s.\n",
			&daddr->sin_addr.s_addr, FUNC13(daddr->sin_port),
			ndev->name);
		err = -ENETUNREACH;
		goto rel_neigh;
	}

	if (ndev->flags & IFF_LOOPBACK) {
		ndev = FUNC8(&init_net, daddr->sin_addr.s_addr);
		if (!ndev) {
			err = -ENETUNREACH;
			goto rel_neigh;
		}
		mtu = ndev->mtu;
		FUNC14("rt dev %s, loopback -> %s, mtu %u.\n",
			&n->dev->name, ndev->name, mtu);
	}

	if (!(ndev->flags & IFF_UP) || !FUNC12(ndev)) {
		FUNC14("%s interface not up.\n", &ndev->name);
		err = -ENETDOWN;
		goto rel_neigh;
	}

	cdev = FUNC4(ndev, &port);
	if (!cdev)
		cdev = FUNC3(ndev, &port);
	if (!cdev) {
		FUNC14("dst %pI4, %s, NOT cxgbi device.\n",
			&daddr->sin_addr.s_addr, ndev->name);
		err = -ENETUNREACH;
		goto rel_neigh;
	}
	FUNC10(1 << CXGBI_DBG_SOCK,
		"route to %pI4 :%u, ndev p#%d,%s, cdev 0x%p.\n",
		&daddr->sin_addr.s_addr, FUNC13(daddr->sin_port),
			   port, ndev->name, cdev);

	csk = FUNC5(cdev);
	if (!csk) {
		err = -ENOMEM;
		goto rel_neigh;
	}
	csk->cdev = cdev;
	csk->port_id = port;
	csk->mtu = mtu;
	csk->dst = dst;

	csk->csk_family = AF_INET;
	csk->daddr.sin_addr.s_addr = daddr->sin_addr.s_addr;
	csk->daddr.sin_port = daddr->sin_port;
	csk->daddr.sin_family = daddr->sin_family;
	csk->saddr.sin_family = daddr->sin_family;
	csk->saddr.sin_addr.s_addr = fl4.saddr;
	FUNC11(n);

	return csk;

rel_neigh:
	FUNC11(n);

rel_rt:
	FUNC9(rt);
err_out:
	return FUNC0(err);
}