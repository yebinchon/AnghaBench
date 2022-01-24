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
typedef  void* u32 ;
struct virtproc_info {int buf_size; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  svq; int /*<<< orphan*/  sendq; } ;
struct virtio_rpmsg_channel {struct virtproc_info* vrp; } ;
struct scatterlist {int dummy; } ;
struct rpmsg_hdr {int len; scalar_t__ reserved; scalar_t__ flags; void* dst; void* src; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* RPMSG_ADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,void*,void*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,struct rpmsg_hdr*,int,int) ; 
 struct rpmsg_hdr* FUNC3 (struct virtproc_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct virtproc_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,struct rpmsg_hdr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct virtproc_info*) ; 
 struct virtio_rpmsg_channel* FUNC11 (struct rpmsg_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct scatterlist*,int,struct rpmsg_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct rpmsg_hdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct rpmsg_device *rpdev,
				     u32 src, u32 dst,
				     void *data, int len, bool wait)
{
	struct virtio_rpmsg_channel *vch = FUNC11(rpdev);
	struct virtproc_info *vrp = vch->vrp;
	struct device *dev = &rpdev->dev;
	struct scatterlist sg;
	struct rpmsg_hdr *msg;
	int err;

	/* bcasting isn't allowed */
	if (src == RPMSG_ADDR_ANY || dst == RPMSG_ADDR_ANY) {
		FUNC1(dev, "invalid addr (src 0x%x, dst 0x%x)\n", src, dst);
		return -EINVAL;
	}

	/*
	 * We currently use fixed-sized buffers, and therefore the payload
	 * length is limited.
	 *
	 * One of the possible improvements here is either to support
	 * user-provided buffers (and then we can also support zero-copy
	 * messaging), or to improve the buffer allocator, to support
	 * variable-length buffer sizes.
	 */
	if (len > vrp->buf_size - sizeof(struct rpmsg_hdr)) {
		FUNC1(dev, "message is too big (%d)\n", len);
		return -EMSGSIZE;
	}

	/* grab a buffer */
	msg = FUNC3(vrp);
	if (!msg && !wait)
		return -ENOMEM;

	/* no free buffer ? wait for one (but bail after 15 seconds) */
	while (!msg) {
		/* enable "tx-complete" interrupts, if not already enabled */
		FUNC10(vrp);

		/*
		 * sleep until a free buffer is available or 15 secs elapse.
		 * the timeout period is not configurable because there's
		 * little point in asking drivers to specify that.
		 * if later this happens to be required, it'd be easy to add.
		 */
		err = FUNC14(vrp->sendq,
					(msg = FUNC3(vrp)),
					FUNC5(15000));

		/* disable "tx-complete" interrupts if we're the last sleeper */
		FUNC8(vrp);

		/* timeout ? */
		if (!err) {
			FUNC1(dev, "timeout waiting for a tx buffer\n");
			return -ERESTARTSYS;
		}
	}

	msg->len = len;
	msg->flags = 0;
	msg->src = src;
	msg->dst = dst;
	msg->reserved = 0;
	FUNC4(msg->data, data, len);

	FUNC0(dev, "TX From 0x%x, To 0x%x, Len %d, Flags %d, Reserved %d\n",
		msg->src, msg->dst, msg->len, msg->flags, msg->reserved);
#if defined(CONFIG_DYNAMIC_DEBUG)
	dynamic_hex_dump("rpmsg_virtio TX: ", DUMP_PREFIX_NONE, 16, 1,
			 msg, sizeof(*msg) + msg->len, true);
#endif

	FUNC9(&sg, msg, sizeof(*msg) + len);

	FUNC6(&vrp->tx_lock);

	/* add message to the remote processor's virtqueue */
	err = FUNC12(vrp->svq, &sg, 1, msg, GFP_KERNEL);
	if (err) {
		/*
		 * need to reclaim the buffer here, otherwise it's lost
		 * (memory won't leak, but rpmsg won't use it again for TX).
		 * this will wait for a buffer management overhaul.
		 */
		FUNC1(dev, "virtqueue_add_outbuf failed: %d\n", err);
		goto out;
	}

	/* tell the remote processor it has a pending message to read */
	FUNC13(vrp->svq);
out:
	FUNC7(&vrp->tx_lock);
	return err;
}