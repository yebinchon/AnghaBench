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
struct vhost_virtqueue {int dummy; } ;
struct vhost_scsi_ctx {scalar_t__ in_size; scalar_t__ rsp_size; scalar_t__ out_size; scalar_t__ req_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_virtqueue*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct vhost_virtqueue *vq, struct vhost_scsi_ctx *vc)
{
	if (FUNC0(vc->in_size < vc->rsp_size)) {
		FUNC1(vq,
		       "Response buf too small, need min %zu bytes got %zu",
		       vc->rsp_size, vc->in_size);
		return -EINVAL;
	} else if (FUNC0(vc->out_size < vc->req_size)) {
		FUNC1(vq,
		       "Request buf too small, need min %zu bytes got %zu",
		       vc->req_size, vc->out_size);
		return -EIO;
	}

	return 0;
}