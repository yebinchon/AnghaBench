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
struct vbg_session {int dummy; } ;
struct vbg_ioctl_hdr {scalar_t__ size_in; scalar_t__ size_out; scalar_t__ type; scalar_t__ rc; } ;
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 scalar_t__ VBG_IOCTL_HDR_TYPE_DEFAULT ; 
 scalar_t__ VINF_HGCM_ASYNC_EXECUTE ; 
 scalar_t__ VMMDEV_MAX_VMMDEVREQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vbg_dev*,struct vbg_session*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct vbg_dev*,void*) ; 

__attribute__((used)) static int FUNC3(struct vbg_dev *gdev,
				struct vbg_session *session, void *data)
{
	struct vbg_ioctl_hdr *hdr = data;
	int ret;

	if (hdr->size_in != hdr->size_out)
		return -EINVAL;

	if (hdr->size_in > VMMDEV_MAX_VMMDEVREQ_SIZE)
		return -E2BIG;

	if (hdr->type == VBG_IOCTL_HDR_TYPE_DEFAULT)
		return -EINVAL;

	ret = FUNC1(gdev, session, data);
	if (ret < 0)
		return ret;

	FUNC2(gdev, data);
	FUNC0(hdr->rc == VINF_HGCM_ASYNC_EXECUTE);

	return 0;
}