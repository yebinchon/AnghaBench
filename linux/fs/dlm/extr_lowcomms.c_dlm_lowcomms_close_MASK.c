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
struct dlm_node_addr {size_t addr_count; struct dlm_node_addr** addr; int /*<<< orphan*/  list; } ;
struct connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,int,int,int) ; 
 int /*<<< orphan*/  dlm_node_addrs_spin ; 
 struct dlm_node_addr* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_node_addr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct connection* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int nodeid)
{
	struct connection *con;
	struct dlm_node_addr *na;

	FUNC5("closing connection to node %d", nodeid);
	con = FUNC6(nodeid, 0);
	if (con) {
		FUNC7(CF_CLOSE, &con->flags);
		FUNC1(con, true, true, true);
		FUNC0(con);
	}

	FUNC8(&dlm_node_addrs_spin);
	na = FUNC2(nodeid);
	if (na) {
		FUNC4(&na->list);
		while (na->addr_count--)
			FUNC3(na->addr[na->addr_count]);
		FUNC3(na);
	}
	FUNC9(&dlm_node_addrs_spin);

	return 0;
}