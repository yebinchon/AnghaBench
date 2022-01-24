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
struct vring_desc {int flags; int /*<<< orphan*/  next; } ;
struct vhost_virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRING_DESC_F_NEXT ; 
 int FUNC1 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC3(struct vhost_virtqueue *vq, struct vring_desc *desc)
{
	unsigned int next;

	/* If this descriptor says it doesn't chain, we're done. */
	if (!(desc->flags & FUNC1(vq, VRING_DESC_F_NEXT)))
		return -1U;

	/* Check they're not leading us off end of descriptors. */
	next = FUNC2(vq, FUNC0(desc->next));
	return next;
}