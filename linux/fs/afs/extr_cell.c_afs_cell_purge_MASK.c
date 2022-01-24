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
struct afs_net {int /*<<< orphan*/  cells_outstanding; int /*<<< orphan*/  cells_timer; int /*<<< orphan*/  cells_lock; int /*<<< orphan*/  ws_cell; } ;
struct afs_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_net*,struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_net*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 struct afs_cell* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct afs_net *net)
{
	struct afs_cell *ws;

	FUNC2("");

	FUNC11(&net->cells_lock);
	ws = FUNC9(net->ws_cell);
	FUNC0(net->ws_cell, NULL);
	FUNC12(&net->cells_lock);
	FUNC4(net, ws);

	FUNC1("del timer");
	if (FUNC8(&net->cells_timer))
		FUNC6(&net->cells_outstanding);

	FUNC1("kick mgr");
	FUNC5(net);

	FUNC1("wait");
	FUNC10(&net->cells_outstanding,
		       !FUNC7(&net->cells_outstanding));
	FUNC3("");
}