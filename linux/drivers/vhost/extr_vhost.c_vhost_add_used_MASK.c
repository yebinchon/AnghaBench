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
struct vring_used_elem {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct vhost_virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*,int) ; 
 int FUNC1 (struct vhost_virtqueue*,struct vring_used_elem*,int) ; 

int FUNC2(struct vhost_virtqueue *vq, unsigned int head, int len)
{
	struct vring_used_elem heads = {
		FUNC0(vq, head),
		FUNC0(vq, len)
	};

	return FUNC1(vq, &heads, 1);
}