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
struct afs_server {int /*<<< orphan*/  usage; int /*<<< orphan*/  put_time; } ;
struct afs_net {int dummy; } ;
typedef  enum afs_server_trace { ____Placeholder_afs_server_trace } afs_server_trace ;

/* Variables and functions */
 int /*<<< orphan*/  afs_server_gc_delay ; 
 int /*<<< orphan*/  FUNC0 (struct afs_net*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_server*,unsigned int,int) ; 

void FUNC5(struct afs_net *net, struct afs_server *server,
		    enum afs_server_trace reason)
{
	unsigned int usage;

	if (!server)
		return;

	server->put_time = FUNC2();

	usage = FUNC1(&server->usage);

	FUNC4(server, usage, reason);

	if (FUNC3(usage > 0))
		return;

	FUNC0(net, afs_server_gc_delay);
}