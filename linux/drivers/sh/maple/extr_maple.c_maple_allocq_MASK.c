#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; int /*<<< orphan*/  list; } ;
struct maple_device {int /*<<< orphan*/  unit; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bufx; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mapleq*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mapleq* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maple_queue_cache ; 

__attribute__((used)) static struct mapleq *FUNC5(struct maple_device *mdev)
{
	struct mapleq *mq;

	mq = FUNC4(sizeof(*mq), GFP_KERNEL);
	if (!mq)
		goto failed_nomem;

	FUNC0(&mq->list);
	mq->dev = mdev;
	mq->recvbuf = FUNC3(maple_queue_cache, GFP_KERNEL);
	if (!mq->recvbuf)
		goto failed_p2;
	mq->recvbuf->buf = &((mq->recvbuf->bufx)[0]);

	return mq;

failed_p2:
	FUNC2(mq);
failed_nomem:
	FUNC1(&mdev->dev, "could not allocate memory for device (%d, %d)\n",
		mdev->port, mdev->unit);
	return NULL;
}