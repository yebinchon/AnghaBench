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
struct inode {int dummy; } ;
struct file {struct doorbell_queue* private_data; } ;
struct doorbell_queue {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  db_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct doorbell_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct doorbell_queue *dbq = filp->private_data;
	unsigned long flags;

	int ret = 0;

	FUNC2(&db_list_lock, flags);
	FUNC1(&dbq->list);
	FUNC3(&db_list_lock, flags);

	FUNC0(dbq);

	return ret;
}