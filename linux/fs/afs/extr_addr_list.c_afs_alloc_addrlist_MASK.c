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
struct TYPE_3__ {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_4__ {TYPE_1__ sin6; } ;
struct sockaddr_rxrpc {unsigned short srx_service; int transport_len; TYPE_2__ transport; int /*<<< orphan*/  transport_type; int /*<<< orphan*/  srx_family; } ;
struct afs_addr_list {unsigned int max_addrs; struct sockaddr_rxrpc* addrs; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 unsigned int AFS_MAX_ADDRESSES ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_RXRPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  addrs ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 struct afs_addr_list* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_addr_list*,int /*<<< orphan*/ ,unsigned int) ; 

struct afs_addr_list *FUNC5(unsigned int nr,
					 unsigned short service,
					 unsigned short port)
{
	struct afs_addr_list *alist;
	unsigned int i;

	FUNC0("%u,%u,%u", nr, service, port);

	if (nr > AFS_MAX_ADDRESSES)
		nr = AFS_MAX_ADDRESSES;

	alist = FUNC2(FUNC4(alist, addrs, nr), GFP_KERNEL);
	if (!alist)
		return NULL;

	FUNC3(&alist->usage, 1);
	alist->max_addrs = nr;

	for (i = 0; i < nr; i++) {
		struct sockaddr_rxrpc *srx = &alist->addrs[i];
		srx->srx_family			= AF_RXRPC;
		srx->srx_service		= service;
		srx->transport_type		= SOCK_DGRAM;
		srx->transport_len		= sizeof(srx->transport.sin6);
		srx->transport.sin6.sin6_family	= AF_INET6;
		srx->transport.sin6.sin6_port	= FUNC1(port);
	}

	return alist;
}