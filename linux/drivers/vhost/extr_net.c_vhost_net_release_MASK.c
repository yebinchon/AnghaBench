#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ page; } ;
struct TYPE_9__ {int /*<<< orphan*/  vqs; } ;
struct vhost_net {int /*<<< orphan*/  refcnt_bias; TYPE_3__ page_frag; TYPE_4__ dev; TYPE_2__* vqs; } ;
struct socket {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct vhost_net* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  xdp; TYPE_1__ rxq; } ;

/* Variables and functions */
 size_t VHOST_NET_VQ_RX ; 
 size_t VHOST_NET_VQ_TX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_net*,struct socket**,struct socket**) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_net*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *f)
{
	struct vhost_net *n = f->private_data;
	struct socket *tx_sock;
	struct socket *rx_sock;

	FUNC8(n, &tx_sock, &rx_sock);
	FUNC7(n);
	FUNC6(&n->dev);
	FUNC5(&n->dev);
	FUNC9(n);
	if (tx_sock)
		FUNC3(tx_sock);
	if (rx_sock)
		FUNC3(rx_sock);
	/* Make sure no callbacks are outstanding */
	FUNC4();
	/* We do an extra flush before freeing memory,
	 * since jobs can re-queue themselves. */
	FUNC7(n);
	FUNC1(n->vqs[VHOST_NET_VQ_RX].rxq.queue);
	FUNC1(n->vqs[VHOST_NET_VQ_TX].xdp);
	FUNC1(n->dev.vqs);
	if (n->page_frag.page)
		FUNC0(n->page_frag.page, n->refcnt_bias);
	FUNC2(n);
	return 0;
}