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
struct TCP_Server_Info {int credits; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  reconnect_instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct TCP_Server_Info *server, const int val)
{
	FUNC1(&server->req_lock);
	server->credits = val;
	if (val == 1)
		server->reconnect_instance++;
	FUNC2(&server->req_lock);
	/* don't log while holding the lock */
	if (val == 1)
		FUNC0(FYI, "set credits to 1 due to smb2 reconnect\n");
}