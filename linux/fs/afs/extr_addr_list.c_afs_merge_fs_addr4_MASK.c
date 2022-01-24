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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_4__ {struct sockaddr_in sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_2__ transport; int /*<<< orphan*/  transport_type; int /*<<< orphan*/  srx_family; } ;
struct afs_addr_list {int nr_addrs; int max_addrs; int nr_ipv4; struct sockaddr_rxrpc* addrs; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_RXRPC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_rxrpc*,struct sockaddr_rxrpc*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct afs_addr_list *alist, __be32 xdr, u16 port)
{
	struct sockaddr_rxrpc *srx;
	u32 addr = FUNC2(xdr);
	int i;

	if (alist->nr_addrs >= alist->max_addrs)
		return;

	for (i = 0; i < alist->nr_ipv4; i++) {
		struct sockaddr_in *a = &alist->addrs[i].transport.sin;
		u32 a_addr = FUNC2(a->sin_addr.s_addr);
		u16 a_port = FUNC3(a->sin_port);

		if (addr == a_addr && port == a_port)
			return;
		if (addr == a_addr && port < a_port)
			break;
		if (addr < a_addr)
			break;
	}

	if (i < alist->nr_addrs)
		FUNC1(alist->addrs + i + 1,
			alist->addrs + i,
			sizeof(alist->addrs[0]) * (alist->nr_addrs - i));

	srx = &alist->addrs[i];
	srx->srx_family = AF_RXRPC;
	srx->transport_type = SOCK_DGRAM;
	srx->transport_len = sizeof(srx->transport.sin);
	srx->transport.sin.sin_family = AF_INET;
	srx->transport.sin.sin_port = FUNC0(port);
	srx->transport.sin.sin_addr.s_addr = xdr;
	alist->nr_ipv4++;
	alist->nr_addrs++;
}