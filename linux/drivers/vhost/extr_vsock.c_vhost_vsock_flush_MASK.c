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
struct vhost_vsock {int /*<<< orphan*/  send_pkt_work; int /*<<< orphan*/  dev; TYPE_1__* vqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  poll; scalar_t__ handle_kick; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vhost_vsock *vsock)
{
	int i;

	for (i = 0; i < FUNC0(vsock->vqs); i++)
		if (vsock->vqs[i].handle_kick)
			FUNC1(&vsock->vqs[i].poll);
	FUNC2(&vsock->dev, &vsock->send_pkt_work);
}