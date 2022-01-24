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
struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 struct vring_virtqueue* FUNC0 (struct virtqueue*) ; 
 void* FUNC1 (struct virtqueue*,unsigned int*,void**) ; 
 void* FUNC2 (struct virtqueue*,unsigned int*,void**) ; 

void *FUNC3(struct virtqueue *_vq, unsigned int *len,
			    void **ctx)
{
	struct vring_virtqueue *vq = FUNC0(_vq);

	return vq->packed_ring ? FUNC1(_vq, len, ctx) :
				 FUNC2(_vq, len, ctx);
}