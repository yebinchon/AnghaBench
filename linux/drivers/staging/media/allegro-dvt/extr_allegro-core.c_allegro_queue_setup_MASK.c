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
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct allegro_channel {unsigned int sizeimage_raw; unsigned int sizeimage_encoded; struct allegro_dev* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,unsigned int) ; 
 struct allegro_channel* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
			       unsigned int *nbuffers, unsigned int *nplanes,
			       unsigned int sizes[],
			       struct device *alloc_devs[])
{
	struct allegro_channel *channel = FUNC2(vq);
	struct allegro_dev *dev = channel->dev;

	FUNC1(2, debug, &dev->v4l2_dev,
		 "%s: queue setup[%s]: nplanes = %d\n",
		 FUNC0(vq->type) ? "output" : "capture",
		 *nplanes == 0 ? "REQBUFS" : "CREATE_BUFS", *nplanes);

	if (*nplanes != 0) {
		if (FUNC0(vq->type)) {
			if (sizes[0] < channel->sizeimage_raw)
				return -EINVAL;
		} else {
			if (sizes[0] < channel->sizeimage_encoded)
				return -EINVAL;
		}
	} else {
		*nplanes = 1;
		if (FUNC0(vq->type))
			sizes[0] = channel->sizeimage_raw;
		else
			sizes[0] = channel->sizeimage_encoded;
	}

	return 0;
}