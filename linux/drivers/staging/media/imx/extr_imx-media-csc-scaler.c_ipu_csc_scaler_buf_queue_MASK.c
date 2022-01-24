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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipu_csc_scaler_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vb2_buffer *vb)
{
	struct ipu_csc_scaler_ctx *ctx = FUNC2(vb->vb2_queue);

	FUNC1(ctx->fh.m2m_ctx, FUNC0(vb));
}