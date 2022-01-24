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
struct vhost_dev {int nvqs; int /*<<< orphan*/ * mm; int /*<<< orphan*/ * worker; int /*<<< orphan*/  work_list; int /*<<< orphan*/  wait; int /*<<< orphan*/ * iotlb; int /*<<< orphan*/ * umem; int /*<<< orphan*/ * log_ctx; TYPE_1__** vqs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * call_ctx; scalar_t__ kick; int /*<<< orphan*/ * error_ctx; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

void FUNC11(struct vhost_dev *dev)
{
	int i;

	for (i = 0; i < dev->nvqs; ++i) {
		if (dev->vqs[i]->error_ctx)
			FUNC1(dev->vqs[i]->error_ctx);
		if (dev->vqs[i]->kick)
			FUNC2(dev->vqs[i]->kick);
		if (dev->vqs[i]->call_ctx)
			FUNC1(dev->vqs[i]->call_ctx);
		FUNC9(dev, dev->vqs[i]);
	}
	FUNC7(dev);
	if (dev->log_ctx)
		FUNC1(dev->log_ctx);
	dev->log_ctx = NULL;
	/* No one will access memory at this point */
	FUNC8(dev->umem);
	dev->umem = NULL;
	FUNC8(dev->iotlb);
	dev->iotlb = NULL;
	FUNC6(dev);
	FUNC10(&dev->wait, EPOLLIN | EPOLLRDNORM);
	FUNC0(!FUNC4(&dev->work_list));
	if (dev->worker) {
		FUNC3(dev->worker);
		dev->worker = NULL;
	}
	if (dev->mm)
		FUNC5(dev->mm);
	dev->mm = NULL;
}