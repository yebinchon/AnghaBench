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
struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct hantro_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 struct vb2_v4l2_buffer* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct vb2_v4l2_buffer *
FUNC1(struct hantro_ctx *ctx)
{
	return FUNC0(ctx->fh.m2m_ctx);
}