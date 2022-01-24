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
typedef  int u32 ;
struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VE_H264_CTRL ; 
 int VE_H264_CTRL_INT_MASK ; 
 int FUNC0 (struct cedrus_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cedrus_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cedrus_ctx *ctx)
{
	struct cedrus_dev *dev = ctx->dev;
	u32 reg = FUNC0(dev, VE_H264_CTRL);

	FUNC1(dev, VE_H264_CTRL,
		     reg & ~VE_H264_CTRL_INT_MASK);
}