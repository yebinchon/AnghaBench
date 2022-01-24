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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {scalar_t__ type; int /*<<< orphan*/  vb2_queue; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct amvdec_session {int /*<<< orphan*/  esparser_queue_work; int /*<<< orphan*/  streamon_cap; int /*<<< orphan*/  streamon_out; struct v4l2_m2m_ctx* m2m_ctx; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_m2m_ctx*,struct vb2_v4l2_buffer*) ; 
 struct amvdec_session* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct amvdec_session*,struct vb2_buffer*) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct amvdec_session *sess = FUNC3(vb->vb2_queue);
	struct v4l2_m2m_ctx *m2m_ctx = sess->m2m_ctx;

	FUNC2(m2m_ctx, vbuf);

	if (!sess->streamon_out || !sess->streamon_cap)
		return;

	if (vb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
	    FUNC4(sess))
		FUNC5(sess, vb);

	FUNC0(&sess->esparser_queue_work);
}