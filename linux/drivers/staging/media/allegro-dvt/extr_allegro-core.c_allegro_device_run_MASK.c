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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; scalar_t__ sequence; } ;
struct allegro_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {int stride; int height; int /*<<< orphan*/  osequence; TYPE_1__ fh; struct allegro_dev* dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct allegro_dev*,struct allegro_channel*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*,struct allegro_channel*,scalar_t__,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *priv)
{
	struct allegro_channel *channel = priv;
	struct allegro_dev *dev = channel->dev;
	struct vb2_v4l2_buffer *src_buf;
	struct vb2_v4l2_buffer *dst_buf;
	dma_addr_t src_y;
	dma_addr_t src_uv;
	dma_addr_t dst_addr;
	unsigned long dst_size;

	dst_buf = FUNC2(channel->fh.m2m_ctx);
	dst_addr = FUNC4(&dst_buf->vb2_buf, 0);
	dst_size = FUNC5(&dst_buf->vb2_buf, 0);
	FUNC1(dev, channel, dst_addr, dst_size);

	src_buf = FUNC3(channel->fh.m2m_ctx);
	src_buf->sequence = channel->osequence++;

	src_y = FUNC4(&src_buf->vb2_buf, 0);
	src_uv = src_y + (channel->stride * channel->height);
	FUNC0(dev, channel, src_y, src_uv);
}