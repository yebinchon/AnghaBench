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
struct vring_virtqueue {scalar_t__ packed_ring; int /*<<< orphan*/  weak_barriers; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 struct vring_virtqueue* FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct virtqueue*,unsigned int) ; 
 int FUNC3 (struct virtqueue*,unsigned int) ; 

bool FUNC4(struct virtqueue *_vq, unsigned last_used_idx)
{
	struct vring_virtqueue *vq = FUNC0(_vq);

	FUNC1(vq->weak_barriers);
	return vq->packed_ring ? FUNC2(_vq, last_used_idx) :
				 FUNC3(_vq, last_used_idx);
}