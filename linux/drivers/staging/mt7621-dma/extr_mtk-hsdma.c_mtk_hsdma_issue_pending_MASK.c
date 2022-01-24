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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_chan {TYPE_2__ vchan; int /*<<< orphan*/  id; int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; int /*<<< orphan*/  task; int /*<<< orphan*/  chan_issued; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct mtk_hsdma_chan*) ; 
 struct mtk_hsdam_engine* FUNC2 (struct mtk_hsdma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mtk_hsdma_chan* FUNC7 (struct dma_chan*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct dma_chan *c)
{
	struct mtk_hsdma_chan *chan = FUNC7(c);
	struct mtk_hsdam_engine *hsdma = FUNC2(chan);

	FUNC4(&chan->vchan.lock);
	if (FUNC8(&chan->vchan) && !chan->desc) {
		if (FUNC1(chan)) {
			FUNC3(chan->id, &hsdma->chan_issued);
			FUNC6(&hsdma->task);
		} else {
			FUNC0(hsdma->ddev.dev, "no desc to issue\n");
		}
	}
	FUNC5(&chan->vchan.lock);
}