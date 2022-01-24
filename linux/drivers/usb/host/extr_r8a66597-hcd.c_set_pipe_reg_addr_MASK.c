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
typedef  size_t u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ pipenum; } ;
struct r8a66597_pipe {unsigned long fifoaddr; unsigned long fifosel; unsigned long fifoctr; int /*<<< orphan*/  pipetrn; int /*<<< orphan*/  pipetre; int /*<<< orphan*/  pipectr; TYPE_1__ info; } ;

/* Variables and functions */
 unsigned long const CFIFO ; 
 unsigned long const CFIFOCTR ; 
 unsigned long const CFIFOSEL ; 
 unsigned long const D0FIFO ; 
 unsigned long const D0FIFOCTR ; 
 unsigned long const D0FIFOSEL ; 
 unsigned long const D1FIFO ; 
 unsigned long const D1FIFOCTR ; 
 unsigned long const D1FIFOSEL ; 
 int /*<<< orphan*/  DCPCTR ; 
 size_t R8A66597_PIPE_NO_DMA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct r8a66597_pipe *pipe, u8 dma_ch)
{
	u16 pipenum = pipe->info.pipenum;
	const unsigned long fifoaddr[] = {D0FIFO, D1FIFO, CFIFO};
	const unsigned long fifosel[] = {D0FIFOSEL, D1FIFOSEL, CFIFOSEL};
	const unsigned long fifoctr[] = {D0FIFOCTR, D1FIFOCTR, CFIFOCTR};

	if (dma_ch > R8A66597_PIPE_NO_DMA)	/* dma fifo not use? */
		dma_ch = R8A66597_PIPE_NO_DMA;

	pipe->fifoaddr = fifoaddr[dma_ch];
	pipe->fifosel = fifosel[dma_ch];
	pipe->fifoctr = fifoctr[dma_ch];

	if (pipenum == 0)
		pipe->pipectr = DCPCTR;
	else
		pipe->pipectr = FUNC1(pipenum);

	if (FUNC0(pipenum)) {
		pipe->pipetre = FUNC2(pipenum);
		pipe->pipetrn = FUNC3(pipenum);
	} else {
		pipe->pipetre = 0;
		pipe->pipetrn = 0;
	}
}