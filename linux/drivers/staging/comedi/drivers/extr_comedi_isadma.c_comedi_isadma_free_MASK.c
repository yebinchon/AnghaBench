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
struct comedi_isadma_desc {int n_desc; scalar_t__ chan2; scalar_t__ chan; struct comedi_isadma_desc* desc; int /*<<< orphan*/  hw_addr; scalar_t__ virt_addr; int /*<<< orphan*/  maxsize; int /*<<< orphan*/  dev; } ;
struct comedi_isadma {int n_desc; scalar_t__ chan2; scalar_t__ chan; struct comedi_isadma* desc; int /*<<< orphan*/  hw_addr; scalar_t__ virt_addr; int /*<<< orphan*/  maxsize; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_isadma_desc*) ; 

void FUNC3(struct comedi_isadma *dma)
{
	struct comedi_isadma_desc *desc;
	int i;

	if (!dma)
		return;

	if (dma->desc) {
		for (i = 0; i < dma->n_desc; i++) {
			desc = &dma->desc[i];
			if (desc->virt_addr)
				FUNC0(dma->dev, desc->maxsize,
						  desc->virt_addr,
						  desc->hw_addr);
		}
		FUNC2(dma->desc);
	}
	if (dma->chan2 && dma->chan2 != dma->chan)
		FUNC1(dma->chan2);
	if (dma->chan)
		FUNC1(dma->chan);
	FUNC2(dma);
}