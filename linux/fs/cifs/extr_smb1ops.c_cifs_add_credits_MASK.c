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
struct cifs_credits {scalar_t__ value; } ;
struct TCP_Server_Info {int /*<<< orphan*/  request_q; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  in_flight; int /*<<< orphan*/  credits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct TCP_Server_Info *server,
		 const struct cifs_credits *credits, const int optype)
{
	FUNC0(&server->req_lock);
	server->credits += credits->value;
	server->in_flight--;
	FUNC1(&server->req_lock);
	FUNC2(&server->request_q);
}