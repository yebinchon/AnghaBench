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
struct virtqueue {TYPE_1__* vdev; } ;
struct virtproc_info {int /*<<< orphan*/  rvq; } ;
struct rpmsg_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; struct virtproc_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct virtproc_info*,struct device*,struct rpmsg_hdr*,unsigned int) ; 
 struct rpmsg_hdr* FUNC3 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct virtqueue *rvq)
{
	struct virtproc_info *vrp = rvq->vdev->priv;
	struct device *dev = &rvq->vdev->dev;
	struct rpmsg_hdr *msg;
	unsigned int len, msgs_received = 0;
	int err;

	msg = FUNC3(rvq, &len);
	if (!msg) {
		FUNC1(dev, "uhm, incoming signal, but no used buffer ?\n");
		return;
	}

	while (msg) {
		err = FUNC2(vrp, dev, msg, len);
		if (err)
			break;

		msgs_received++;

		msg = FUNC3(rvq, &len);
	}

	FUNC0(dev, "Received %u messages\n", msgs_received);

	/* tell the remote processor we added another available rx buffer */
	if (msgs_received)
		FUNC4(vrp->rvq);
}