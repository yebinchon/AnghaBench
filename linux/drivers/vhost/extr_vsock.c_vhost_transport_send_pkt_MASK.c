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
struct TYPE_2__ {int /*<<< orphan*/  dst_cid; } ;
struct virtio_vsock_pkt {int len; int /*<<< orphan*/  list; scalar_t__ reply; TYPE_1__ hdr; } ;
struct vhost_vsock {int /*<<< orphan*/  send_pkt_work; int /*<<< orphan*/  dev; int /*<<< orphan*/  send_pkt_list_lock; int /*<<< orphan*/  send_pkt_list; int /*<<< orphan*/  queued_replies; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct vhost_vsock* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_vsock_pkt*) ; 

__attribute__((used)) static int
FUNC10(struct virtio_vsock_pkt *pkt)
{
	struct vhost_vsock *vsock;
	int len = pkt->len;

	FUNC3();

	/* Find the vhost_vsock according to guest context id  */
	vsock = FUNC7(FUNC1(pkt->hdr.dst_cid));
	if (!vsock) {
		FUNC4();
		FUNC9(pkt);
		return -ENODEV;
	}

	if (pkt->reply)
		FUNC0(&vsock->queued_replies);

	FUNC5(&vsock->send_pkt_list_lock);
	FUNC2(&pkt->list, &vsock->send_pkt_list);
	FUNC6(&vsock->send_pkt_list_lock);

	FUNC8(&vsock->dev, &vsock->send_pkt_work);

	FUNC4();
	return len;
}