#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cedrus_run {int dummy; } ;
struct cedrus_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  neighbor_info_buf_dma; int /*<<< orphan*/  pic_info_buf_dma; } ;
struct TYPE_4__ {TYPE_1__ h264; } ;
struct cedrus_ctx {TYPE_2__ codec; struct cedrus_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEDRUS_CODEC_H264 ; 
 int /*<<< orphan*/  VE_H264_EXTRA_BUFFER1 ; 
 int /*<<< orphan*/  VE_H264_EXTRA_BUFFER2 ; 
 int /*<<< orphan*/  VE_H264_SDROT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct cedrus_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cedrus_ctx*,struct cedrus_run*) ; 
 int /*<<< orphan*/  FUNC2 (struct cedrus_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cedrus_ctx*,struct cedrus_run*) ; 
 int /*<<< orphan*/  FUNC4 (struct cedrus_ctx*,struct cedrus_run*) ; 

__attribute__((used)) static void FUNC5(struct cedrus_ctx *ctx,
			      struct cedrus_run *run)
{
	struct cedrus_dev *dev = ctx->dev;

	FUNC0(dev, CEDRUS_CODEC_H264);

	FUNC2(dev, VE_H264_SDROT_CTRL, 0);
	FUNC2(dev, VE_H264_EXTRA_BUFFER1,
		     ctx->codec.h264.pic_info_buf_dma);
	FUNC2(dev, VE_H264_EXTRA_BUFFER2,
		     ctx->codec.h264.neighbor_info_buf_dma);

	FUNC4(ctx, run);
	FUNC3(ctx, run);

	FUNC1(ctx, run);
}