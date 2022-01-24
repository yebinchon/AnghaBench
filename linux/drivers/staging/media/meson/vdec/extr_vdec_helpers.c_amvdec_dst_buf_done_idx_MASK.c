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
typedef  size_t u32 ;
struct vb2_v4l2_buffer {int dummy; } ;
struct device {int dummy; } ;
struct amvdec_session {int /*<<< orphan*/ * fw_idx_to_vb2_idx; int /*<<< orphan*/  m2m_ctx; TYPE_1__* core; } ;
struct TYPE_2__ {struct device* dev_dec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amvdec_session*,struct vb2_v4l2_buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_session*,struct vb2_v4l2_buffer*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,size_t) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct amvdec_session *sess,
			     u32 buf_idx, u32 offset, u32 field)
{
	struct vb2_v4l2_buffer *vbuf;
	struct device *dev = sess->core->dev_dec;

	vbuf = FUNC3(sess->m2m_ctx,
					      sess->fw_idx_to_vb2_idx[buf_idx]);

	if (!vbuf) {
		FUNC2(dev,
			"Buffer %u done but it doesn't exist in m2m_ctx\n",
			buf_idx);
		return;
	}

	if (offset != -1)
		FUNC1(sess, vbuf, offset, field, true);
	else
		FUNC0(sess, vbuf, field);
}