#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct cedrus_dev {int /*<<< orphan*/  v4l2_dev; TYPE_1__** dec_ops; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct cedrus_ctx {size_t current_codec; TYPE_3__ fh; TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
typedef  enum cedrus_irq_status { ____Placeholder_cedrus_irq_status } cedrus_irq_status ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_4__ {int (* irq_status ) (struct cedrus_ctx*) ;int /*<<< orphan*/  (* irq_clear ) (struct cedrus_ctx*) ;int /*<<< orphan*/  (* irq_disable ) (struct cedrus_ctx*) ;} ;

/* Variables and functions */
 int CEDRUS_IRQ_ERROR ; 
 int CEDRUS_IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int FUNC0 (struct cedrus_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct cedrus_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cedrus_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct cedrus_ctx* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct cedrus_dev *dev = data;
	struct cedrus_ctx *ctx;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	enum vb2_buffer_state state;
	enum cedrus_irq_status status;

	ctx = FUNC6(dev->m2m_dev);
	if (!ctx) {
		FUNC3(&dev->v4l2_dev,
			 "Instance released before the end of transaction\n");
		return IRQ_NONE;
	}

	status = dev->dec_ops[ctx->current_codec]->irq_status(ctx);
	if (status == CEDRUS_IRQ_NONE)
		return IRQ_NONE;

	dev->dec_ops[ctx->current_codec]->irq_disable(ctx);
	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);

	src_buf = FUNC8(ctx->fh.m2m_ctx);
	dst_buf = FUNC5(ctx->fh.m2m_ctx);

	if (!src_buf || !dst_buf) {
		FUNC3(&dev->v4l2_dev,
			 "Missing source and/or destination buffers\n");
		return IRQ_HANDLED;
	}

	if (status == CEDRUS_IRQ_ERROR)
		state = VB2_BUF_STATE_ERROR;
	else
		state = VB2_BUF_STATE_DONE;

	FUNC4(src_buf, state);
	FUNC4(dst_buf, state);

	FUNC7(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);

	return IRQ_HANDLED;
}