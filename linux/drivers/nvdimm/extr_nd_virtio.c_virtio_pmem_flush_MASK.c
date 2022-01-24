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
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_2__ ret; } ;
struct virtio_pmem_request {int done; int wq_buf_avail; TYPE_1__ resp; int /*<<< orphan*/  host_acked; int /*<<< orphan*/  wq_buf; int /*<<< orphan*/  list; TYPE_2__ req; } ;
struct virtio_pmem {int /*<<< orphan*/  pmem_lock; int /*<<< orphan*/  req_vq; int /*<<< orphan*/  req_list; } ;
struct virtio_device {int /*<<< orphan*/  dev; struct virtio_pmem* priv; } ;
struct scatterlist {int dummy; } ;
struct nd_region {struct virtio_device* provider_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_PMEM_REQ_TYPE_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_pmem_request*) ; 
 struct virtio_pmem_request* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct scatterlist**,int,int,struct virtio_pmem_request*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct nd_region *nd_region)
{
	struct virtio_device *vdev = nd_region->provider_data;
	struct virtio_pmem *vpmem  = vdev->priv;
	struct virtio_pmem_request *req_data;
	struct scatterlist *sgs[2], sg, ret;
	unsigned long flags;
	int err, err1;

	FUNC8();
	req_data = FUNC5(sizeof(*req_data), GFP_KERNEL);
	if (!req_data)
		return -ENOMEM;

	req_data->done = false;
	FUNC3(&req_data->host_acked);
	FUNC3(&req_data->wq_buf);
	FUNC0(&req_data->list);
	req_data->req.type = FUNC1(VIRTIO_PMEM_REQ_TYPE_FLUSH);
	FUNC9(&sg, &req_data->req, sizeof(req_data->req));
	sgs[0] = &sg;
	FUNC9(&ret, &req_data->resp.ret, sizeof(req_data->resp));
	sgs[1] = &ret;

	FUNC10(&vpmem->pmem_lock, flags);
	 /*
	  * If virtqueue_add_sgs returns -ENOSPC then req_vq virtual
	  * queue does not have free descriptor. We add the request
	  * to req_list and wait for host_ack to wake us up when free
	  * slots are available.
	  */
	while ((err = FUNC12(vpmem->req_vq, sgs, 1, 1, req_data,
					GFP_ATOMIC)) == -ENOSPC) {

		FUNC2(&vdev->dev, "failed to send command to virtio pmem device, no free slots in the virtqueue\n");
		req_data->wq_buf_avail = false;
		FUNC7(&req_data->list, &vpmem->req_list);
		FUNC11(&vpmem->pmem_lock, flags);

		/* A host response results in "host_ack" getting called */
		FUNC14(req_data->wq_buf, req_data->wq_buf_avail);
		FUNC10(&vpmem->pmem_lock, flags);
	}
	err1 = FUNC13(vpmem->req_vq);
	FUNC11(&vpmem->pmem_lock, flags);
	/*
	 * virtqueue_add_sgs failed with error different than -ENOSPC, we can't
	 * do anything about that.
	 */
	if (err || !err1) {
		FUNC2(&vdev->dev, "failed to send command to virtio pmem device\n");
		err = -EIO;
	} else {
		/* A host repsonse results in "host_ack" getting called */
		FUNC14(req_data->host_acked, req_data->done);
		err = FUNC6(req_data->resp.ret);
	}

	FUNC4(req_data);
	return err;
}