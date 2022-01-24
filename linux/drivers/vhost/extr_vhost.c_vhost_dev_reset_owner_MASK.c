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
struct vhost_umem {int /*<<< orphan*/  umem_list; } ;
struct vhost_dev {int nvqs; TYPE_1__** vqs; struct vhost_umem* umem; } ;
struct TYPE_2__ {struct vhost_umem* umem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_dev*) ; 

void FUNC2(struct vhost_dev *dev, struct vhost_umem *umem)
{
	int i;

	FUNC1(dev);

	/* Restore memory to default empty mapping. */
	FUNC0(&umem->umem_list);
	dev->umem = umem;
	/* We don't need VQ locks below since vhost_dev_cleanup makes sure
	 * VQs aren't running.
	 */
	for (i = 0; i < dev->nvqs; ++i)
		dev->vqs[i]->umem = umem;
}