#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_3__ dev; TYPE_2__* vqs; } ;
struct TYPE_5__ {unsigned long long acked_features; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {size_t vhost_hlen; size_t sock_hlen; TYPE_1__ vq; } ;

/* Variables and functions */
 int EFAULT ; 
 int VHOST_F_LOG_ALL ; 
 int VHOST_NET_F_VIRTIO_NET_HDR ; 
 int VHOST_NET_VQ_MAX ; 
 unsigned long long VIRTIO_F_IOMMU_PLATFORM ; 
 unsigned long long VIRTIO_F_VERSION_1 ; 
 unsigned long long VIRTIO_NET_F_MRG_RXBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(struct vhost_net *n, u64 features)
{
	size_t vhost_hlen, sock_hlen, hdr_len;
	int i;

	hdr_len = (features & ((1ULL << VIRTIO_NET_F_MRG_RXBUF) |
			       (1ULL << VIRTIO_F_VERSION_1))) ?
			sizeof(struct virtio_net_hdr_mrg_rxbuf) :
			sizeof(struct virtio_net_hdr);
	if (features & (1 << VHOST_NET_F_VIRTIO_NET_HDR)) {
		/* vhost provides vnet_hdr */
		vhost_hlen = hdr_len;
		sock_hlen = 0;
	} else {
		/* socket provides vnet_hdr */
		vhost_hlen = 0;
		sock_hlen = hdr_len;
	}
	FUNC0(&n->dev.mutex);
	if ((features & (1 << VHOST_F_LOG_ALL)) &&
	    !FUNC3(&n->dev))
		goto out_unlock;

	if ((features & (1ULL << VIRTIO_F_IOMMU_PLATFORM))) {
		if (FUNC2(&n->dev, true))
			goto out_unlock;
	}

	for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
		FUNC0(&n->vqs[i].vq.mutex);
		n->vqs[i].vq.acked_features = features;
		n->vqs[i].vhost_hlen = vhost_hlen;
		n->vqs[i].sock_hlen = sock_hlen;
		FUNC1(&n->vqs[i].vq.mutex);
	}
	FUNC1(&n->dev.mutex);
	return 0;

out_unlock:
	FUNC1(&n->dev.mutex);
	return -EFAULT;
}