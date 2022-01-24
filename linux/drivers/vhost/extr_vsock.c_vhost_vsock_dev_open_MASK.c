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
struct vhost_vsock {int /*<<< orphan*/  send_pkt_work; int /*<<< orphan*/  send_pkt_list; int /*<<< orphan*/  send_pkt_list_lock; struct vhost_virtqueue* vqs; int /*<<< orphan*/  dev; int /*<<< orphan*/  queued_replies; scalar_t__ guest_cid; } ;
struct vhost_virtqueue {int /*<<< orphan*/  handle_kick; } ;
struct inode {int dummy; } ;
struct file {struct vhost_vsock* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UIO_MAXIOV ; 
 int /*<<< orphan*/  VHOST_VSOCK_PKT_WEIGHT ; 
 int /*<<< orphan*/  VHOST_VSOCK_WEIGHT ; 
 size_t VSOCK_VQ_RX ; 
 size_t VSOCK_VQ_TX ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vhost_virtqueue** FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct vhost_vsock* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vhost_virtqueue**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhost_transport_send_pkt_work ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_vsock*) ; 
 int /*<<< orphan*/  vhost_vsock_handle_rx_kick ; 
 int /*<<< orphan*/  vhost_vsock_handle_tx_kick ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct vhost_virtqueue **vqs;
	struct vhost_vsock *vsock;
	int ret;

	/* This struct is large and allocation could fail, fall back to vmalloc
	 * if there is no other way.
	 */
	vsock = FUNC4(sizeof(*vsock), GFP_KERNEL | __GFP_RETRY_MAYFAIL);
	if (!vsock)
		return -ENOMEM;

	vqs = FUNC3(FUNC0(vsock->vqs), sizeof(*vqs), GFP_KERNEL);
	if (!vqs) {
		ret = -ENOMEM;
		goto out;
	}

	vsock->guest_cid = 0; /* no CID assigned yet */

	FUNC2(&vsock->queued_replies, 0);

	vqs[VSOCK_VQ_TX] = &vsock->vqs[VSOCK_VQ_TX];
	vqs[VSOCK_VQ_RX] = &vsock->vqs[VSOCK_VQ_RX];
	vsock->vqs[VSOCK_VQ_TX].handle_kick = vhost_vsock_handle_tx_kick;
	vsock->vqs[VSOCK_VQ_RX].handle_kick = vhost_vsock_handle_rx_kick;

	FUNC6(&vsock->dev, vqs, FUNC0(vsock->vqs),
		       UIO_MAXIOV, VHOST_VSOCK_PKT_WEIGHT,
		       VHOST_VSOCK_WEIGHT);

	file->private_data = vsock;
	FUNC5(&vsock->send_pkt_list_lock);
	FUNC1(&vsock->send_pkt_list);
	FUNC8(&vsock->send_pkt_work, vhost_transport_send_pkt_work);
	return 0;

out:
	FUNC7(vsock);
	return ret;
}