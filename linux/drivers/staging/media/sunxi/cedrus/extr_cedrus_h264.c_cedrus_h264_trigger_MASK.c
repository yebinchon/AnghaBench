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
struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VE_H264_TRIGGER_TYPE ; 
 int /*<<< orphan*/  VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE ; 
 int /*<<< orphan*/  FUNC0 (struct cedrus_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct cedrus_ctx *ctx)
{
	struct cedrus_dev *dev = ctx->dev;

	FUNC0(dev, VE_H264_TRIGGER_TYPE,
		     VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE);
}