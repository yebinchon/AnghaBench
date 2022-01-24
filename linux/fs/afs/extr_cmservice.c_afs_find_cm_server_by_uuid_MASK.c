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
struct afs_uuid {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_call {struct afs_server* server; int /*<<< orphan*/  request; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 struct afs_server* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct afs_call*,struct afs_server*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct afs_call *call,
				      struct afs_uuid *uuid)
{
	struct afs_server *server;

	FUNC2();
	server = FUNC0(call->net, call->request);
	FUNC3();
	if (!server) {
		FUNC4(call, call->request);
		return 0;
	}

	call->server = server;
	return FUNC1(call, server);
}