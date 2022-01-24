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
typedef  scalar_t__ u64 ;
struct vhost_virtqueue {struct vhost_umem* iotlb; } ;
struct vhost_umem_node {scalar_t__ start; int perm; scalar_t__ size; } ;
struct vhost_umem {int /*<<< orphan*/  umem_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*,scalar_t__,int) ; 
 struct vhost_umem_node* FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct vhost_virtqueue*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_virtqueue*,struct vhost_umem_node const*,int) ; 

__attribute__((used)) static bool FUNC4(struct vhost_virtqueue *vq,
			    int access, u64 addr, u64 len, int type)
{
	const struct vhost_umem_node *node;
	struct vhost_umem *umem = vq->iotlb;
	u64 s = 0, size, orig_addr = addr, last = addr + len - 1;

	if (FUNC2(vq, addr, len, type))
		return true;

	while (len > s) {
		node = FUNC1(&umem->umem_tree,
							   addr,
							   last);
		if (node == NULL || node->start > addr) {
			FUNC0(vq, addr, access);
			return false;
		} else if (!(node->perm & access)) {
			/* Report the possible access violation by
			 * request another translation from userspace.
			 */
			return false;
		}

		size = node->size - addr + node->start;

		if (orig_addr == addr && size >= len)
			FUNC3(vq, node, type);

		s += size;
		addr += size;
	}

	return true;
}