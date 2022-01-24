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
struct virt_dma_desc {int dummy; } ;
struct mtk_hsdma_chan {scalar_t__ next_sg; int /*<<< orphan*/ * desc; int /*<<< orphan*/  vchan; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mtk_hsdma_chan *chan)
{
	struct virt_dma_desc *vdesc;

	vdesc = FUNC1(&chan->vchan);
	if (!vdesc) {
		chan->desc = NULL;
		return 0;
	}
	chan->desc = FUNC0(vdesc);
	chan->next_sg = 0;

	return 1;
}