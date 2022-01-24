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
struct doorbell_queue {int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  db_list ; 
 int /*<<< orphan*/  db_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct doorbell_queue* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct doorbell_queue *dbq;
	unsigned long flags;
	int ret = 0;

	dbq = FUNC1(sizeof(struct doorbell_queue), GFP_KERNEL);
	if (!dbq) {
		FUNC3("fsl-hv: out of memory\n");
		return -ENOMEM;
	}

	FUNC4(&dbq->lock);
	FUNC0(&dbq->wait);

	FUNC5(&db_list_lock, flags);
	FUNC2(&dbq->list, &db_list);
	FUNC6(&db_list_lock, flags);

	filp->private_data = dbq;

	return ret;
}