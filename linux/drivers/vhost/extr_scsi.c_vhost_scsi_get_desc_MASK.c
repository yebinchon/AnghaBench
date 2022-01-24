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
struct vhost_virtqueue {scalar_t__ num; int /*<<< orphan*/ * iov; } ;
struct vhost_scsi_ctx {scalar_t__ head; size_t out; size_t in; void* out_size; int /*<<< orphan*/  out_iter; void* in_size; } ;
struct vhost_scsi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EAGAIN ; 
 int ENXIO ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,size_t,size_t) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct vhost_virtqueue*) ; 
 scalar_t__ FUNC7 (struct vhost_virtqueue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct vhost_scsi *vs, struct vhost_virtqueue *vq,
		    struct vhost_scsi_ctx *vc)
{
	int ret = -ENXIO;

	vc->head = FUNC7(vq, vq->iov,
				     FUNC0(vq->iov), &vc->out, &vc->in,
				     NULL, NULL);

	FUNC3("vhost_get_vq_desc: head: %d, out: %u in: %u\n",
		 vc->head, vc->out, vc->in);

	/* On error, stop handling until the next kick. */
	if (FUNC4(vc->head < 0))
		goto done;

	/* Nothing new?  Wait for eventfd to tell us they refilled. */
	if (vc->head == vq->num) {
		if (FUNC4(FUNC6(&vs->dev, vq))) {
			FUNC5(&vs->dev, vq);
			ret = -EAGAIN;
		}
		goto done;
	}

	/*
	 * Get the size of request and response buffers.
	 * FIXME: Not correct for BIDI operation
	 */
	vc->out_size = FUNC2(vq->iov, vc->out);
	vc->in_size = FUNC2(&vq->iov[vc->out], vc->in);

	/*
	 * Copy over the virtio-scsi request header, which for a
	 * ANY_LAYOUT enabled guest may span multiple iovecs, or a
	 * single iovec may contain both the header + outgoing
	 * WRITE payloads.
	 *
	 * copy_from_iter() will advance out_iter, so that it will
	 * point at the start of the outgoing WRITE payload, if
	 * DMA_TO_DEVICE is set.
	 */
	FUNC1(&vc->out_iter, WRITE, vq->iov, vc->out, vc->out_size);
	ret = 0;

done:
	return ret;
}