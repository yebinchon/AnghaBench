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
struct tsi721_bdma_chan {int /*<<< orphan*/  lock; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tsi721_bdma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static
enum dma_status FUNC4(struct dma_chan *dchan, dma_cookie_t cookie,
				 struct dma_tx_state *txstate)
{
	struct tsi721_bdma_chan *bdma_chan = FUNC3(dchan);
	enum dma_status	status;

	FUNC1(&bdma_chan->lock);
	status = FUNC0(dchan, cookie, txstate);
	FUNC2(&bdma_chan->lock);
	return status;
}