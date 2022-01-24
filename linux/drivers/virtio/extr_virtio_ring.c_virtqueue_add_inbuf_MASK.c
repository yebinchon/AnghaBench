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
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct virtqueue*,struct scatterlist**,unsigned int,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct virtqueue *vq,
			struct scatterlist *sg, unsigned int num,
			void *data,
			gfp_t gfp)
{
	return FUNC0(vq, &sg, num, 0, 1, data, NULL, gfp);
}