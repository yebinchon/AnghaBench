#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct hantro_func {scalar_t__ id; } ;
struct hantro_dev {int /*<<< orphan*/  m2m_dev; TYPE_1__* variant; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ctrl_handler; void* m2m_ctx; } ;
struct hantro_ctx {TYPE_2__ fh; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  buf_finish; struct hantro_dev* dev; } ;
struct file {TYPE_2__* private_data; } ;
struct TYPE_6__ {int codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HANTRO_DECODERS ; 
 int HANTRO_ENCODERS ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ MEDIA_ENT_F_PROC_VIDEO_DECODER ; 
 scalar_t__ MEDIA_ENT_F_PROC_VIDEO_ENCODER ; 
 int FUNC2 (void*) ; 
 int FUNC3 (struct hantro_dev*,struct hantro_ctx*,int) ; 
 int /*<<< orphan*/  hantro_dec_buf_finish ; 
 int /*<<< orphan*/  hantro_enc_buf_finish ; 
 int /*<<< orphan*/  FUNC4 (struct hantro_ctx*) ; 
 struct hantro_func* FUNC5 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hantro_ctx*) ; 
 struct hantro_ctx* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue_init ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct video_device*) ; 
 void* FUNC12 (int /*<<< orphan*/ ,struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC13 (struct file*) ; 
 struct hantro_dev* FUNC14 (struct file*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct file *filp)
{
	struct hantro_dev *vpu = FUNC14(filp);
	struct video_device *vdev = FUNC13(filp);
	struct hantro_func *func = FUNC5(vdev);
	struct hantro_ctx *ctx;
	int allowed_codecs, ret;

	/*
	 * We do not need any extra locking here, because we operate only
	 * on local data here, except reading few fields from dev, which
	 * do not change through device's lifetime (which is guaranteed by
	 * reference on module from open()) and V4L2 internal objects (such
	 * as vdev and ctx->fh), which have proper locking done in respective
	 * helper functions used here.
	 */

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = vpu;
	if (func->id == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
		allowed_codecs = vpu->variant->codec & HANTRO_ENCODERS;
		ctx->buf_finish = hantro_enc_buf_finish;
		ctx->fh.m2m_ctx = FUNC12(vpu->m2m_dev, ctx,
						    queue_init);
	} else if (func->id == MEDIA_ENT_F_PROC_VIDEO_DECODER) {
		allowed_codecs = vpu->variant->codec & HANTRO_DECODERS;
		ctx->buf_finish = hantro_dec_buf_finish;
		ctx->fh.m2m_ctx = FUNC12(vpu->m2m_dev, ctx,
						    queue_init);
	} else {
		ctx->fh.m2m_ctx = FUNC0(-ENODEV);
	}
	if (FUNC1(ctx->fh.m2m_ctx)) {
		ret = FUNC2(ctx->fh.m2m_ctx);
		FUNC6(ctx);
		return ret;
	}

	FUNC11(&ctx->fh, vdev);
	filp->private_data = &ctx->fh;
	FUNC8(&ctx->fh);

	FUNC4(ctx);

	ret = FUNC3(vpu, ctx, allowed_codecs);
	if (ret) {
		FUNC15("Failed to set up controls\n");
		goto err_fh_free;
	}
	ctx->fh.ctrl_handler = &ctx->ctrl_handler;

	return 0;

err_fh_free:
	FUNC9(&ctx->fh);
	FUNC10(&ctx->fh);
	FUNC6(ctx);
	return ret;
}