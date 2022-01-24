#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* parent; int /*<<< orphan*/  release; int /*<<< orphan*/  dma_pfn_offset; } ;
struct TYPE_13__ {int /*<<< orphan*/  stop; int /*<<< orphan*/  start; } ;
struct rproc_vdev {int index; int rsc_offset; TYPE_1__ dev; int /*<<< orphan*/ * vring; TYPE_2__ subdev; int /*<<< orphan*/  node; struct rproc* rproc; int /*<<< orphan*/  id; int /*<<< orphan*/  refcount; } ;
struct device {TYPE_4__* parent; } ;
struct rproc {int /*<<< orphan*/  rvdevs; struct device dev; int /*<<< orphan*/  nb_vdev; } ;
struct fw_rsc_vdev_vring {int dummy; } ;
struct fw_rsc_vdev {int num_of_vrings; int /*<<< orphan*/  id; int /*<<< orphan*/  config_len; int /*<<< orphan*/  dfeatures; scalar_t__* reserved; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_14__ {int /*<<< orphan*/  dma_pfn_offset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct rproc_vdev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct rproc_vdev* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct rproc*,TYPE_2__*) ; 
 int FUNC17 (struct rproc_vdev*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct rproc_vdev*,struct fw_rsc_vdev*,int) ; 
 int /*<<< orphan*/  rproc_rvdev_release ; 
 int /*<<< orphan*/  rproc_vdev_do_start ; 
 int /*<<< orphan*/  rproc_vdev_do_stop ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC22(struct rproc *rproc, struct fw_rsc_vdev *rsc,
			     int offset, int avail)
{
	struct device *dev = &rproc->dev;
	struct rproc_vdev *rvdev;
	int i, ret;
	char name[16];

	/* make sure resource isn't truncated */
	if (sizeof(*rsc) + rsc->num_of_vrings * sizeof(struct fw_rsc_vdev_vring)
			+ rsc->config_len > avail) {
		FUNC2(dev, "vdev rsc is truncated\n");
		return -EINVAL;
	}

	/* make sure reserved bytes are zeroes */
	if (rsc->reserved[0] || rsc->reserved[1]) {
		FUNC2(dev, "vdev rsc has non zero reserved bytes\n");
		return -EINVAL;
	}

	FUNC1(dev, "vdev rsc: id %d, dfeatures 0x%x, cfg len %d, %d vrings\n",
		rsc->id, rsc->dfeatures, rsc->config_len, rsc->num_of_vrings);

	/* we currently support only two vrings per rvdev */
	if (rsc->num_of_vrings > FUNC0(rvdev->vring)) {
		FUNC2(dev, "too many vrings: %d\n", rsc->num_of_vrings);
		return -EINVAL;
	}

	rvdev = FUNC13(sizeof(*rvdev), GFP_KERNEL);
	if (!rvdev)
		return -ENOMEM;

	FUNC12(&rvdev->refcount);

	rvdev->id = rsc->id;
	rvdev->rproc = rproc;
	rvdev->index = rproc->nb_vdev++;

	/* Initialise vdev subdevice */
	FUNC21(name, sizeof(name), "vdev%dbuffer", rvdev->index);
	rvdev->dev.parent = rproc->dev.parent;
	rvdev->dev.dma_pfn_offset = rproc->dev.parent->dma_pfn_offset;
	rvdev->dev.release = rproc_rvdev_release;
	FUNC5(&rvdev->dev, "%s#%s", FUNC3(rvdev->dev.parent), name);
	FUNC4(&rvdev->dev, rvdev);

	ret = FUNC7(&rvdev->dev);
	if (ret) {
		FUNC15(&rvdev->dev);
		return ret;
	}
	/* Make device dma capable by inheriting from parent's capabilities */
	FUNC20(&rvdev->dev, FUNC11(rproc->dev.parent));

	ret = FUNC9(&rvdev->dev,
					   FUNC10(rproc->dev.parent));
	if (ret) {
		FUNC6(dev,
			 "Failed to set DMA mask %llx. Trying to continue... %x\n",
			 FUNC10(rproc->dev.parent), ret);
	}

	/* parse the vrings */
	for (i = 0; i < rsc->num_of_vrings; i++) {
		ret = FUNC19(rvdev, rsc, i);
		if (ret)
			goto free_rvdev;
	}

	/* remember the resource offset*/
	rvdev->rsc_offset = offset;

	/* allocate the vring resources */
	for (i = 0; i < rsc->num_of_vrings; i++) {
		ret = FUNC17(rvdev, i);
		if (ret)
			goto unwind_vring_allocations;
	}

	FUNC14(&rvdev->node, &rproc->rvdevs);

	rvdev->subdev.start = rproc_vdev_do_start;
	rvdev->subdev.stop = rproc_vdev_do_stop;

	FUNC16(rproc, &rvdev->subdev);

	return 0;

unwind_vring_allocations:
	for (i--; i >= 0; i--)
		FUNC18(&rvdev->vring[i]);
free_rvdev:
	FUNC8(&rvdev->dev);
	return ret;
}