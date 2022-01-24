#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtproc_info {int num_bufs; size_t buf_size; struct virtio_device* vdev; int /*<<< orphan*/  bufs_dma; struct virtqueue* rvq; int /*<<< orphan*/  ns_ept; struct virtqueue* svq; void* rbufs; void* sbufs; int /*<<< orphan*/  sendq; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  endpoints_lock; int /*<<< orphan*/  endpoints; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct virtio_device {TYPE_1__* config; TYPE_2__ dev; struct virtproc_info* priv; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_RPMSG_BUF_SIZE ; 
 int MAX_RPMSG_NUM_BUFS ; 
 int /*<<< orphan*/  RPMSG_NS_ADDR ; 
 int /*<<< orphan*/  VIRTIO_RPMSG_F_NS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct virtproc_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct virtproc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct virtproc_info*) ; 
 struct virtproc_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpmsg_ns_cb ; 
 int /*<<< orphan*/ * rpmsg_recv_done ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,void*,int) ; 
 int /*<<< orphan*/ * rpmsg_xmit_done ; 
 int /*<<< orphan*/  FUNC13 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct virtio_device*) ; 
 int FUNC15 (struct virtio_device*,int,struct virtqueue**,int /*<<< orphan*/ **,char const* const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct virtqueue*,struct scatterlist*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct virtqueue*) ; 
 int FUNC19 (struct virtqueue*) ; 
 int FUNC20 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC21 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC22(struct virtio_device *vdev)
{
	vq_callback_t *vq_cbs[] = { rpmsg_recv_done, rpmsg_xmit_done };
	static const char * const names[] = { "input", "output" };
	struct virtqueue *vqs[2];
	struct virtproc_info *vrp;
	void *bufs_va;
	int err = 0, i;
	size_t total_buf_space;
	bool notify;

	vrp = FUNC10(sizeof(*vrp), GFP_KERNEL);
	if (!vrp)
		return -ENOMEM;

	vrp->vdev = vdev;

	FUNC7(&vrp->endpoints);
	FUNC11(&vrp->endpoints_lock);
	FUNC11(&vrp->tx_lock);
	FUNC8(&vrp->sendq);

	/* We expect two virtqueues, rx and tx (and in this order) */
	err = FUNC15(vdev, 2, vqs, vq_cbs, names, NULL);
	if (err)
		goto free_vrp;

	vrp->rvq = vqs[0];
	vrp->svq = vqs[1];

	/* we expect symmetric tx/rx vrings */
	FUNC0(FUNC19(vrp->rvq) !=
		FUNC19(vrp->svq));

	/* we need less buffers if vrings are small */
	if (FUNC19(vrp->rvq) < MAX_RPMSG_NUM_BUFS / 2)
		vrp->num_bufs = FUNC19(vrp->rvq) * 2;
	else
		vrp->num_bufs = MAX_RPMSG_NUM_BUFS;

	vrp->buf_size = MAX_RPMSG_BUF_SIZE;

	total_buf_space = vrp->num_bufs * vrp->buf_size;

	/* allocate coherent memory for the buffers */
	bufs_va = FUNC5(vdev->dev.parent,
				     total_buf_space, &vrp->bufs_dma,
				     GFP_KERNEL);
	if (!bufs_va) {
		err = -ENOMEM;
		goto vqs_del;
	}

	FUNC2(&vdev->dev, "buffers: va %pK, dma %pad\n",
		bufs_va, &vrp->bufs_dma);

	/* half of the buffers is dedicated for RX */
	vrp->rbufs = bufs_va;

	/* and half is dedicated for TX */
	vrp->sbufs = bufs_va + total_buf_space / 2;

	/* set up the receive buffers */
	for (i = 0; i < vrp->num_bufs / 2; i++) {
		struct scatterlist sg;
		void *cpu_addr = vrp->rbufs + i * vrp->buf_size;

		FUNC12(&sg, cpu_addr, vrp->buf_size);

		err = FUNC17(vrp->rvq, &sg, 1, cpu_addr,
					  GFP_KERNEL);
		FUNC0(err); /* sanity check; this can't really happen */
	}

	/* suppress "tx-complete" interrupts */
	FUNC18(vrp->svq);

	vdev->priv = vrp;

	/* if supported by the remote processor, enable the name service */
	if (FUNC16(vdev, VIRTIO_RPMSG_F_NS)) {
		/* a dedicated endpoint handles the name service msgs */
		vrp->ns_ept = FUNC1(vrp, NULL, rpmsg_ns_cb,
						vrp, RPMSG_NS_ADDR);
		if (!vrp->ns_ept) {
			FUNC3(&vdev->dev, "failed to create the ns ept\n");
			err = -ENOMEM;
			goto free_coherent;
		}
	}

	/*
	 * Prepare to kick but don't notify yet - we can't do this before
	 * device is ready.
	 */
	notify = FUNC20(vrp->rvq);

	/* From this point on, we can notify and get callbacks. */
	FUNC14(vdev);

	/* tell the remote processor it can start sending messages */
	/*
	 * this might be concurrent with callbacks, but we are only
	 * doing notify, not a full kick here, so that's ok.
	 */
	if (notify)
		FUNC21(vrp->rvq);

	FUNC4(&vdev->dev, "rpmsg host is online\n");

	return 0;

free_coherent:
	FUNC6(vdev->dev.parent, total_buf_space,
			  bufs_va, vrp->bufs_dma);
vqs_del:
	vdev->config->del_vqs(vrp->vdev);
free_vrp:
	FUNC9(vrp);
	return err;
}