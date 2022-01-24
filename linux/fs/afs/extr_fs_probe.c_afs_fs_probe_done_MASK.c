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
struct afs_server {int /*<<< orphan*/  flags; int /*<<< orphan*/  probe_outstanding; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_PROBING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct afs_server *server)
{
	if (!FUNC0(&server->probe_outstanding))
		return false;

	FUNC3(&server->probe_outstanding);
	FUNC1(AFS_SERVER_FL_PROBING, &server->flags);
	FUNC2(&server->flags, AFS_SERVER_FL_PROBING);
	return true;
}