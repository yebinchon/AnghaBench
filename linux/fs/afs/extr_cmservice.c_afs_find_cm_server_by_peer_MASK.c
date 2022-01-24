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
struct sockaddr_rxrpc {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_call {struct afs_server* server; TYPE_1__* net; int /*<<< orphan*/  rxcall; } ;
struct TYPE_2__ {int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 struct afs_server* FUNC0 (TYPE_1__*,struct sockaddr_rxrpc*) ; 
 int FUNC1 (struct afs_call*,struct afs_server*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_rxrpc*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct sockaddr_rxrpc*) ; 

__attribute__((used)) static int FUNC4(struct afs_call *call)
{
	struct sockaddr_rxrpc srx;
	struct afs_server *server;

	FUNC2(call->net->socket, call->rxcall, &srx);

	server = FUNC0(call->net, &srx);
	if (!server) {
		FUNC3(call, &srx);
		return 0;
	}

	call->server = server;
	return FUNC1(call, server);
}