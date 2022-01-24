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
typedef  scalar_t__ u32 ;
struct vb2_buffer {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; scalar_t__ flags; struct vb2_buffer vb2_buf; } ;
struct amvdec_session {int /*<<< orphan*/  esparser_queued_bufs; scalar_t__ keyframe_found; int /*<<< orphan*/  m2m_ctx; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_core {int /*<<< orphan*/  dev; } ;
struct amvdec_codec_ops {scalar_t__ (* num_pending_bufs ) (struct amvdec_session*) ;} ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct amvdec_codec_ops* codec_ops; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PARSER_FETCH_CMD ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct amvdec_session*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct amvdec_session*) ; 
 scalar_t__ FUNC8 (struct vb2_buffer*) ; 
 scalar_t__ FUNC9 (struct amvdec_session*) ; 
 int FUNC10 (struct amvdec_core*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(struct amvdec_session *sess, struct vb2_v4l2_buffer *vbuf)
{
	int ret;
	struct vb2_buffer *vb = &vbuf->vb2_buf;
	struct amvdec_core *core = sess->core;
	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;
	u32 num_dst_bufs = 0;
	u32 payload_size = FUNC17(vb, 0);
	dma_addr_t phy = FUNC16(vb, 0);
	u32 offset;
	u32 pad_size;

	if (codec_ops->num_pending_bufs)
		num_dst_bufs = codec_ops->num_pending_bufs(sess);

	num_dst_bufs += FUNC14(sess->m2m_ctx);

	if (FUNC9(sess) < payload_size ||
	    FUNC4(&sess->esparser_queued_bufs) >= num_dst_bufs)
		return -EAGAIN;

	FUNC15(sess->m2m_ctx, vbuf);

	offset = FUNC7(sess);

	FUNC0(sess, vb->timestamp, offset);
	FUNC5(core->dev, "esparser: ts = %llu pld_size = %u offset = %08X\n",
		vb->timestamp, payload_size, offset);

	pad_size = FUNC8(vb);
	ret = FUNC10(core, phy, payload_size + pad_size);

	if (ret <= 0) {
		FUNC6(core->dev, "esparser: input parsing error\n");
		FUNC1(sess, vb->timestamp);
		FUNC13(vbuf, VB2_BUF_STATE_ERROR);
		FUNC2(core, PARSER_FETCH_CMD, 0);

		return 0;
	}

	/* We need to wait until we parse the first keyframe.
	 * All buffers prior to the first keyframe must be dropped.
	 */
	if (!sess->keyframe_found)
		FUNC12(1000, 2000);

	if (sess->keyframe_found)
		FUNC3(&sess->esparser_queued_bufs);
	else
		FUNC1(sess, vb->timestamp);

	vbuf->flags = 0;
	vbuf->field = V4L2_FIELD_NONE;
	FUNC13(vbuf, VB2_BUF_STATE_DONE);

	return 0;
}