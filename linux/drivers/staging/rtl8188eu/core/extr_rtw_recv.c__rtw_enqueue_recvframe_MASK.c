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
struct recv_frame {int /*<<< orphan*/  list; } ;
struct __queue {int dummy; } ;

/* Variables and functions */
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct recv_frame *precvframe, struct __queue *queue)
{
	FUNC2(&precvframe->list);
	FUNC1(&precvframe->list, FUNC0(queue));

	return _SUCCESS;
}