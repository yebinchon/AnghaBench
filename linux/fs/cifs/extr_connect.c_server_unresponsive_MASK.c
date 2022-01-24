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
struct TCP_Server_Info {scalar_t__ tcpStatus; int echo_interval; int /*<<< orphan*/  response_q; scalar_t__ lstrp; } ;

/* Variables and functions */
 scalar_t__ CifsGood ; 
 scalar_t__ CifsNeedNegotiate ; 
 int HZ ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct TCP_Server_Info *server)
{
	/*
	 * We need to wait 3 echo intervals to make sure we handle such
	 * situations right:
	 * 1s  client sends a normal SMB request
	 * 2s  client gets a response
	 * 30s echo workqueue job pops, and decides we got a response recently
	 *     and don't need to send another
	 * ...
	 * 65s kernel_recvmsg times out, and we see that we haven't gotten
	 *     a response in >60s.
	 */
	if ((server->tcpStatus == CifsGood ||
	    server->tcpStatus == CifsNeedNegotiate) &&
	    FUNC2(jiffies, server->lstrp + 3 * server->echo_interval)) {
		FUNC1(VFS, "has not responded in %lu seconds. Reconnecting...\n",
			 (3 * server->echo_interval) / HZ);
		FUNC0(server);
		FUNC3(&server->response_q);
		return true;
	}

	return false;
}