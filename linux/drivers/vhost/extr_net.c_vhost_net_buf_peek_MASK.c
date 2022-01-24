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
struct vhost_net_buf {int dummy; } ;
struct vhost_net_virtqueue {struct vhost_net_buf rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhost_net_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net_buf*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_net_virtqueue*) ; 

__attribute__((used)) static int FUNC4(struct vhost_net_virtqueue *nvq)
{
	struct vhost_net_buf *rxq = &nvq->rxq;

	if (!FUNC1(rxq))
		goto out;

	if (!FUNC3(nvq))
		return 0;

out:
	return FUNC2(FUNC0(rxq));
}