#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imgu_media_pipe {TYPE_1__* nodes; } ;
struct imgu_device {struct imgu_media_pipe* imgu_pipe; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; TYPE_2__ vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct imgu_device *imgu,
					 unsigned int pipe, int node)
{
	int i;
	struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[pipe];

	for (i = 0; i < node; i++) {
		FUNC2(&imgu_pipe->nodes[i].vdev);
		FUNC0(&imgu_pipe->nodes[i].vdev.entity);
		FUNC1(&imgu_pipe->nodes[i].lock);
	}
}