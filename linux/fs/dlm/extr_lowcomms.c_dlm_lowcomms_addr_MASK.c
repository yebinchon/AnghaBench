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
struct sockaddr_storage {int nodeid; int addr_count; struct sockaddr_storage** addr; int /*<<< orphan*/  list; } ;
struct dlm_node_addr {int nodeid; int addr_count; struct dlm_node_addr** addr; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ DLM_MAX_ADDR_COUNT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  dlm_node_addrs ; 
 int /*<<< orphan*/  dlm_node_addrs_spin ; 
 struct sockaddr_storage* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*) ; 
 struct sockaddr_storage* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(int nodeid, struct sockaddr_storage *addr, int len)
{
	struct sockaddr_storage *new_addr;
	struct dlm_node_addr *new_node, *na;

	new_node = FUNC2(sizeof(struct dlm_node_addr), GFP_NOFS);
	if (!new_node)
		return -ENOMEM;

	new_addr = FUNC2(sizeof(struct sockaddr_storage), GFP_NOFS);
	if (!new_addr) {
		FUNC1(new_node);
		return -ENOMEM;
	}

	FUNC4(new_addr, addr, len);

	FUNC5(&dlm_node_addrs_spin);
	na = FUNC0(nodeid);
	if (!na) {
		new_node->nodeid = nodeid;
		new_node->addr[0] = new_addr;
		new_node->addr_count = 1;
		FUNC3(&new_node->list, &dlm_node_addrs);
		FUNC6(&dlm_node_addrs_spin);
		return 0;
	}

	if (na->addr_count >= DLM_MAX_ADDR_COUNT) {
		FUNC6(&dlm_node_addrs_spin);
		FUNC1(new_addr);
		FUNC1(new_node);
		return -ENOSPC;
	}

	na->addr[na->addr_count++] = new_addr;
	FUNC6(&dlm_node_addrs_spin);
	FUNC1(new_node);
	return 0;
}