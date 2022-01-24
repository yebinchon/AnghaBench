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
struct st_rproc {int /*<<< orphan*/ * mbox_chan; } ;
struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct st_rproc* priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MBOX_MAX ; 
 int MBOX_TX ; 
 int ST_RPROC_MAX_VRING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(struct rproc *rproc, int vqid)
{
	struct st_rproc *ddata = rproc->priv;
	struct device *dev = rproc->dev.parent;
	int ret;

	/* send the index of the triggered virtqueue in the mailbox payload */
	if (FUNC0(vqid >= ST_RPROC_MAX_VRING))
		return;

	ret = FUNC2(ddata->mbox_chan[vqid * MBOX_MAX + MBOX_TX],
				(void *)&vqid);
	if (ret < 0)
		FUNC1(dev, "failed to send message via mbox: %d\n", ret);
}