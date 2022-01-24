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
struct iscsi_conn {int /*<<< orphan*/  nopin_timer_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_conn *conn)
{
	FUNC1(&conn->nopin_timer_lock);
	FUNC0(conn);
	FUNC2(&conn->nopin_timer_lock);
}