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
struct comedi_isadma_desc {unsigned int size; int /*<<< orphan*/  chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isa_dma_bridge_buggy ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

unsigned int FUNC6(struct comedi_isadma *dma)
{
	struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
	unsigned long flags;
	unsigned int result;
	unsigned int result1;

	flags = FUNC0();
	FUNC1(desc->chan);
	if (!isa_dma_bridge_buggy)
		FUNC2(desc->chan);
	result = FUNC4(desc->chan);
	/*
	 * Read the counter again and choose higher value in order to
	 * avoid reading during counter lower byte roll over if the
	 * isa_dma_bridge_buggy is set.
	 */
	result1 = FUNC4(desc->chan);
	if (!isa_dma_bridge_buggy)
		FUNC3(desc->chan);
	FUNC5(flags);

	if (result < result1)
		result = result1;
	if (result >= desc->size || result == 0)
		return 0;
	return desc->size - result;
}