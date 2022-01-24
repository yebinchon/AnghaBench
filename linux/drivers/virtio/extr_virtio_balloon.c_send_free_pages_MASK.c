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
typedef  scalar_t__ u32 ;
struct virtio_balloon {int /*<<< orphan*/  cmd_id_active; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct virtio_balloon*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct virtio_balloon*) ; 

__attribute__((used)) static int FUNC4(struct virtio_balloon *vb)
{
	int err;
	u32 cmd_id_active;

	while (1) {
		/*
		 * If a stop id or a new cmd id was just received from host,
		 * stop the reporting.
		 */
		cmd_id_active = FUNC2(vb->vdev, vb->cmd_id_active);
		if (FUNC1(cmd_id_active !=
			     FUNC3(vb)))
			break;

		/*
		 * The free page blocks are allocated and sent to host one by
		 * one.
		 */
		err = FUNC0(vb);
		if (err == -EINTR)
			break;
		else if (FUNC1(err))
			return err;
	}

	return 0;
}