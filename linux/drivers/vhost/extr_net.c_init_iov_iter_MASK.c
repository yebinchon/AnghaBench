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
struct vhost_virtqueue {int /*<<< orphan*/  iov; } ;
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,size_t) ; 
 size_t FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC4(struct vhost_virtqueue *vq, struct iov_iter *iter,
			    size_t hdr_size, int out)
{
	/* Skip header. TODO: support TSO. */
	size_t len = FUNC3(vq->iov, out);

	FUNC2(iter, WRITE, vq->iov, out, len);
	FUNC0(iter, hdr_size);

	return FUNC1(iter);
}