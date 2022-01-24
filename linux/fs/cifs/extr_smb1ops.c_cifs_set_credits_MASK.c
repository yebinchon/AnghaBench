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
struct TCP_Server_Info {int credits; int oplocks; int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int enable_oplocks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct TCP_Server_Info *server, const int val)
{
	FUNC0(&server->req_lock);
	server->credits = val;
	server->oplocks = val > 1 ? enable_oplocks : false;
	FUNC1(&server->req_lock);
}