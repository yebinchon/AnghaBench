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
typedef  int u32 ;
struct vring_desc {unsigned int len; unsigned int flags; int /*<<< orphan*/  addr; } ;
struct vhost_virtqueue {struct iovec* indirect; } ;
struct vhost_log {int len; scalar_t__ addr; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int E2BIG ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  READ ; 
 unsigned int UIO_MAXIOV ; 
 int USHRT_MAX ; 
 int VHOST_ACCESS_RO ; 
 int VHOST_ACCESS_WO ; 
 int /*<<< orphan*/  VRING_DESC_F_INDIRECT ; 
 int /*<<< orphan*/  VRING_DESC_F_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vring_desc*,int,struct iov_iter*) ; 
 int FUNC1 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int /*<<< orphan*/ ,struct iovec*,int,int) ; 
 unsigned int FUNC3 (struct vhost_virtqueue*,struct vring_desc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct vhost_virtqueue*,scalar_t__,int,struct iovec*,unsigned int,int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int FUNC7 (struct vhost_virtqueue*,unsigned int) ; 
 scalar_t__ FUNC8 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vhost_virtqueue*,char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC10(struct vhost_virtqueue *vq,
			struct iovec iov[], unsigned int iov_size,
			unsigned int *out_num, unsigned int *in_num,
			struct vhost_log *log, unsigned int *log_num,
			struct vring_desc *indirect)
{
	struct vring_desc desc;
	unsigned int i = 0, count, found = 0;
	u32 len = FUNC7(vq, indirect->len);
	struct iov_iter from;
	int ret, access;

	/* Sanity check */
	if (FUNC6(len % sizeof desc)) {
		FUNC9(vq, "Invalid length in indirect descriptor: "
		       "len 0x%llx not multiple of 0x%zx\n",
		       (unsigned long long)len,
		       sizeof desc);
		return -EINVAL;
	}

	ret = FUNC5(vq, FUNC8(vq, indirect->addr), len, vq->indirect,
			     UIO_MAXIOV, VHOST_ACCESS_RO);
	if (FUNC6(ret < 0)) {
		if (ret != -EAGAIN)
			FUNC9(vq, "Translation failure %d in indirect.\n", ret);
		return ret;
	}
	FUNC2(&from, READ, vq->indirect, ret, len);

	/* We will use the result as an address to read from, so most
	 * architectures only need a compiler barrier here. */
	FUNC4();

	count = len / sizeof desc;
	/* Buffers are chained via a 16 bit next field, so
	 * we can have at most 2^16 of these. */
	if (FUNC6(count > USHRT_MAX + 1)) {
		FUNC9(vq, "Indirect buffer length too big: %d\n",
		       indirect->len);
		return -E2BIG;
	}

	do {
		unsigned iov_count = *in_num + *out_num;
		if (FUNC6(++found > count)) {
			FUNC9(vq, "Loop detected: last one at %u "
			       "indirect size %u\n",
			       i, count);
			return -EINVAL;
		}
		if (FUNC6(!FUNC0(&desc, sizeof(desc), &from))) {
			FUNC9(vq, "Failed indirect descriptor: idx %d, %zx\n",
			       i, (size_t)FUNC8(vq, indirect->addr) + i * sizeof desc);
			return -EINVAL;
		}
		if (FUNC6(desc.flags & FUNC1(vq, VRING_DESC_F_INDIRECT))) {
			FUNC9(vq, "Nested indirect descriptor: idx %d, %zx\n",
			       i, (size_t)FUNC8(vq, indirect->addr) + i * sizeof desc);
			return -EINVAL;
		}

		if (desc.flags & FUNC1(vq, VRING_DESC_F_WRITE))
			access = VHOST_ACCESS_WO;
		else
			access = VHOST_ACCESS_RO;

		ret = FUNC5(vq, FUNC8(vq, desc.addr),
				     FUNC7(vq, desc.len), iov + iov_count,
				     iov_size - iov_count, access);
		if (FUNC6(ret < 0)) {
			if (ret != -EAGAIN)
				FUNC9(vq, "Translation failure %d indirect idx %d\n",
					ret, i);
			return ret;
		}
		/* If this is an input descriptor, increment that count. */
		if (access == VHOST_ACCESS_WO) {
			*in_num += ret;
			if (FUNC6(log && ret)) {
				log[*log_num].addr = FUNC8(vq, desc.addr);
				log[*log_num].len = FUNC7(vq, desc.len);
				++*log_num;
			}
		} else {
			/* If it's an output descriptor, they're all supposed
			 * to come before any input descriptors. */
			if (FUNC6(*in_num)) {
				FUNC9(vq, "Indirect descriptor "
				       "has out after in: idx %d\n", i);
				return -EINVAL;
			}
			*out_num += ret;
		}
	} while ((i = FUNC3(vq, &desc)) != -1);
	return 0;
}