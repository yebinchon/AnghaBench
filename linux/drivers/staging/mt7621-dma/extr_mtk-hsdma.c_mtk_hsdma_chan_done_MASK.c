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
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
struct mtk_hsdma_desc {scalar_t__ num_sgs; TYPE_3__ vdesc; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_chan {scalar_t__ next_sg; TYPE_2__ vchan; int /*<<< orphan*/  id; struct mtk_hsdma_desc* desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {int /*<<< orphan*/  chan_issued; TYPE_1__ ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mtk_hsdma_chan*) ; 
 scalar_t__ FUNC2 (struct mtk_hsdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(struct mtk_hsdam_engine *hsdma,
				struct mtk_hsdma_chan *chan)
{
	struct mtk_hsdma_desc *desc;
	int chan_issued;

	chan_issued = 0;
	FUNC5(&chan->vchan.lock);
	desc = chan->desc;
	if (FUNC2(desc)) {
		if (chan->next_sg == desc->num_sgs) {
			FUNC3(&desc->vdesc.node);
			FUNC7(&desc->vdesc);
			chan_issued = FUNC1(chan);
		}
	} else {
		FUNC0(hsdma->ddev.dev, "no desc to complete\n");
	}

	if (chan_issued)
		FUNC4(chan->id, &hsdma->chan_issued);
	FUNC6(&chan->vchan.lock);
}