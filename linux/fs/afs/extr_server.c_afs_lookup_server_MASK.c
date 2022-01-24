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
typedef  int /*<<< orphan*/  uuid_t ;
struct key {int dummy; } ;
struct afs_server {int /*<<< orphan*/  usage; } ;
struct afs_cell {int /*<<< orphan*/  net; } ;
struct afs_addr_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct afs_server* FUNC0 (struct afs_addr_list*) ; 
 struct afs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct afs_addr_list*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct afs_server*,int /*<<< orphan*/ ) ; 
 struct afs_server* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct afs_addr_list*) ; 
 struct afs_server* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct afs_server* FUNC7 (int /*<<< orphan*/ ,struct afs_server*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_addr_list*) ; 
 struct afs_addr_list* FUNC9 (struct afs_cell*,struct key*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_server*) ; 

struct afs_server *FUNC12(struct afs_cell *cell, struct key *key,
				     const uuid_t *uuid)
{
	struct afs_addr_list *alist;
	struct afs_server *server, *candidate;

	FUNC3("%p,%pU", cell->net, uuid);

	server = FUNC6(cell->net, uuid);
	if (server)
		return server;

	alist = FUNC9(cell, key, uuid);
	if (FUNC2(alist))
		return FUNC0(alist);

	candidate = FUNC5(cell->net, uuid, alist);
	if (!candidate) {
		FUNC8(alist);
		return FUNC1(-ENOMEM);
	}

	server = FUNC7(cell->net, candidate);
	if (server != candidate) {
		FUNC8(alist);
		FUNC11(candidate);
	}

	FUNC4(" = %p{%d}", server, FUNC10(&server->usage));
	return server;
}