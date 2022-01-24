#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iscsi_task {TYPE_2__* sc; } ;
struct iscsi_conn {TYPE_3__* session; } ;
typedef  int /*<<< orphan*/  itt_t ;
struct TYPE_6__ {int /*<<< orphan*/  age; } ;
struct TYPE_4__ {int /*<<< orphan*/  phase; } ;
struct TYPE_5__ {TYPE_1__ SCp; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 struct iscsi_task* FUNC0 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 

struct iscsi_task *FUNC3(struct iscsi_conn *conn, itt_t itt)
{
	struct iscsi_task *task;

	if (FUNC2(conn, itt))
		return NULL;

	task = FUNC0(conn, itt);
	if (!task || !task->sc)
		return NULL;

	if (task->sc->SCp.phase != conn->session->age) {
		FUNC1(KERN_ERR, conn->session,
				  "task's session age %d, expected %d\n",
				  task->sc->SCp.phase, conn->session->age);
		return NULL;
	}

	return task;
}