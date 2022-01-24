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
typedef  int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;
struct fotg210_ep {int dir_in; scalar_t__ epnum; struct fotg210_udc* fotg210; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DMACPSR1_DMA_START ; 
 int FUNC1 (int) ; 
 int DMATFNR_ACC_CXF ; 
 int FUNC2 (scalar_t__) ; 
 int DMISGR2_MDMA_CMPLT ; 
 int DMISGR2_MDMA_ERROR ; 
 scalar_t__ FOTG210_DMACPSR1 ; 
 scalar_t__ FOTG210_DMACPSR2 ; 
 scalar_t__ FOTG210_DMATFNR ; 
 scalar_t__ FOTG210_DMISGR2 ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct fotg210_ep *ep,
			      dma_addr_t d, u32 len)
{
	u32 value;
	struct fotg210_udc *fotg210 = ep->fotg210;

	/* set transfer length and direction */
	value = FUNC3(fotg210->reg + FOTG210_DMACPSR1);
	value &= ~(FUNC0(0xFFFF) | FUNC1(1));
	value |= FUNC0(len) | FUNC1(ep->dir_in);
	FUNC4(value, fotg210->reg + FOTG210_DMACPSR1);

	/* set device DMA target FIFO number */
	value = FUNC3(fotg210->reg + FOTG210_DMATFNR);
	if (ep->epnum)
		value |= FUNC2(ep->epnum - 1);
	else
		value |= DMATFNR_ACC_CXF;
	FUNC4(value, fotg210->reg + FOTG210_DMATFNR);

	/* set DMA memory address */
	FUNC4(d, fotg210->reg + FOTG210_DMACPSR2);

	/* enable MDMA_EROR and MDMA_CMPLT interrupt */
	value = FUNC3(fotg210->reg + FOTG210_DMISGR2);
	value &= ~(DMISGR2_MDMA_CMPLT | DMISGR2_MDMA_ERROR);
	FUNC4(value, fotg210->reg + FOTG210_DMISGR2);

	/* start DMA */
	value = FUNC3(fotg210->reg + FOTG210_DMACPSR1);
	value |= DMACPSR1_DMA_START;
	FUNC4(value, fotg210->reg + FOTG210_DMACPSR1);
}