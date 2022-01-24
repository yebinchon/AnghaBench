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
struct iscsi_conn {int /*<<< orphan*/  response_queue_lock; int /*<<< orphan*/  response_queue_list; int /*<<< orphan*/  immed_queue_lock; int /*<<< orphan*/  immed_queue_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct iscsi_conn *conn)
{
	bool empty;

	FUNC1(&conn->immed_queue_lock);
	empty = FUNC0(&conn->immed_queue_list);
	FUNC2(&conn->immed_queue_lock);

	if (!empty)
		return empty;

	FUNC1(&conn->response_queue_lock);
	empty = FUNC0(&conn->response_queue_list);
	FUNC2(&conn->response_queue_lock);

	return empty;
}