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
struct vb2_queue {scalar_t__ type; } ;
struct amvdec_session {scalar_t__ status; scalar_t__ streamon_cap; int /*<<< orphan*/  m2m_ctx; scalar_t__ streamon_out; int /*<<< orphan*/ * priv; int /*<<< orphan*/  vififo_paddr; int /*<<< orphan*/  vififo_vaddr; int /*<<< orphan*/  vififo_size; struct amvdec_core* core; int /*<<< orphan*/  recycle_thread; } ;
struct amvdec_core {int /*<<< orphan*/ * cur_sess; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ STATUS_NEEDS_RESUME ; 
 scalar_t__ STATUS_RUNNING ; 
 scalar_t__ STATUS_STOPPED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct amvdec_session* FUNC6 (struct vb2_queue*) ; 
 scalar_t__ FUNC7 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC9 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC10 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC11 (struct amvdec_session*) ; 

__attribute__((used)) static void FUNC12(struct vb2_queue *q)
{
	struct amvdec_session *sess = FUNC6(q);
	struct amvdec_core *core = sess->core;
	struct vb2_v4l2_buffer *buf;

	if (sess->status == STATUS_RUNNING ||
	    (sess->status == STATUS_NEEDS_RESUME &&
	     (!sess->streamon_out || !sess->streamon_cap))) {
		if (FUNC7(sess))
			FUNC2(sess->recycle_thread);

		FUNC9(sess);
		FUNC8(sess);
		FUNC0(sess->core->dev, sess->vififo_size,
				  sess->vififo_vaddr, sess->vififo_paddr);
		FUNC11(sess);
		FUNC10(sess);
		FUNC1(sess->priv);
		sess->priv = NULL;
		core->cur_sess = NULL;
		sess->status = STATUS_STOPPED;
	}

	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		while ((buf = FUNC5(sess->m2m_ctx)))
			FUNC3(buf, VB2_BUF_STATE_ERROR);

		sess->streamon_out = 0;
	} else {
		while ((buf = FUNC4(sess->m2m_ctx)))
			FUNC3(buf, VB2_BUF_STATE_ERROR);

		sess->streamon_cap = 0;
	}
}