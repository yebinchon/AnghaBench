#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtproc_info {size_t num_bufs; size_t buf_size; int /*<<< orphan*/  bufs_dma; int /*<<< orphan*/  rbufs; int /*<<< orphan*/  vdev; int /*<<< orphan*/  endpoints; scalar_t__ ns_ept; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct virtio_device {TYPE_2__ dev; TYPE_1__* config; struct virtproc_info* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* del_vqs ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtproc_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct virtproc_info*) ; 
 int /*<<< orphan*/  rpmsg_remove_device ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct virtio_device *vdev)
{
	struct virtproc_info *vrp = vdev->priv;
	size_t total_buf_space = vrp->num_bufs * vrp->buf_size;
	int ret;

	vdev->config->reset(vdev);

	ret = FUNC2(&vdev->dev, NULL, rpmsg_remove_device);
	if (ret)
		FUNC1(&vdev->dev, "can't remove rpmsg device: %d\n", ret);

	if (vrp->ns_ept)
		FUNC0(vrp, vrp->ns_ept);

	FUNC4(&vrp->endpoints);

	vdev->config->del_vqs(vrp->vdev);

	FUNC3(vdev->dev.parent, total_buf_space,
			  vrp->rbufs, vrp->bufs_dma);

	FUNC5(vrp);
}