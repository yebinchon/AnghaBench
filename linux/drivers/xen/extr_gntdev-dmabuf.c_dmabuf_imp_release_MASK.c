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
typedef  int /*<<< orphan*/  u32 ;
struct gntdev_dmabuf_priv {int dummy; } ;
struct TYPE_3__ {scalar_t__ sgt; struct dma_buf_attachment* attach; int /*<<< orphan*/  refs; } ;
struct TYPE_4__ {TYPE_1__ imp; } ;
struct gntdev_dmabuf {TYPE_2__ u; int /*<<< orphan*/  nr_pages; } ;
struct dma_buf_attachment {struct dma_buf* dmabuf; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (struct gntdev_dmabuf*) ; 
 int FUNC1 (struct gntdev_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buf_attachment*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gntdev_dmabuf* FUNC6 (struct gntdev_dmabuf_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gntdev_dmabuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gntdev_dmabuf_priv *priv, u32 fd)
{
	struct gntdev_dmabuf *gntdev_dmabuf;
	struct dma_buf_attachment *attach;
	struct dma_buf *dma_buf;

	gntdev_dmabuf = FUNC6(priv, fd);
	if (FUNC0(gntdev_dmabuf))
		return FUNC1(gntdev_dmabuf);

	FUNC8("Releasing DMA buffer with fd %d\n", fd);

	FUNC5(gntdev_dmabuf->u.imp.refs,
				      gntdev_dmabuf->nr_pages);

	attach = gntdev_dmabuf->u.imp.attach;

	if (gntdev_dmabuf->u.imp.sgt)
		FUNC4(attach, gntdev_dmabuf->u.imp.sgt,
					 DMA_BIDIRECTIONAL);
	dma_buf = attach->dmabuf;
	FUNC2(attach->dmabuf, attach);
	FUNC3(dma_buf);

	FUNC7(gntdev_dmabuf);
	return 0;
}