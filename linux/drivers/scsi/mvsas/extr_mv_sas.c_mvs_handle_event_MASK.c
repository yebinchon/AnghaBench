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
struct mvs_wq {int handler; int /*<<< orphan*/  work_q; int /*<<< orphan*/  entry; void* data; struct mvs_info* mvi; } ;
struct mvs_info {int /*<<< orphan*/  wq_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mvs_wq*) ; 
 struct mvs_wq* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvs_work_queue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mvs_info *mvi, void *data, int handler)
{
	struct mvs_wq *mwq;
	int ret = 0;

	mwq = FUNC1(sizeof(struct mvs_wq), GFP_ATOMIC);
	if (mwq) {
		mwq->mvi = mvi;
		mwq->data = data;
		mwq->handler = handler;
		FUNC0(&mwq->work_q, mvs_work_queue, mwq);
		FUNC2(&mwq->entry, &mvi->wq_list);
		FUNC3(&mwq->work_q, HZ * 2);
	} else
		ret = -ENOMEM;

	return ret;
}