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
struct vhost_dev {int nvqs; TYPE_1__** vqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  poll; scalar_t__ handle_kick; scalar_t__ kick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct vhost_dev *dev)
{
	int i;

	for (i = 0; i < dev->nvqs; ++i) {
		if (dev->vqs[i]->kick && dev->vqs[i]->handle_kick) {
			FUNC1(&dev->vqs[i]->poll);
			FUNC0(&dev->vqs[i]->poll);
		}
	}
}