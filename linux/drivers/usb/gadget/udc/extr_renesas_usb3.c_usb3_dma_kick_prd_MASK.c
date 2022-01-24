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
struct renesas_usb3_ep {int num; scalar_t__ dir_in; struct renesas_usb3_dma* dma; } ;
struct renesas_usb3_dma {int prd_dma; int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int DMA_CON_PIPE_DIR ; 
 int DMA_CON_PRD_EN ; 
 int /*<<< orphan*/  USB3_AXI_INT_STA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB3_DMA_INT_STA ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int) ; 
 struct renesas_usb3* FUNC6 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct renesas_usb3_ep *usb3_ep)
{
	struct renesas_usb3_dma *dma = usb3_ep->dma;
	struct renesas_usb3 *usb3 = FUNC6(usb3_ep);
	u32 dma_con = FUNC2(usb3_ep->num) | DMA_CON_PRD_EN;

	if (usb3_ep->dir_in)
		dma_con |= DMA_CON_PIPE_DIR;

	FUNC8();	/* prd entries should be in system memory here */

	FUNC7(usb3, 1 << usb3_ep->num, USB3_DMA_INT_STA);
	FUNC7(usb3, FUNC0(dma->num) |
		   FUNC1(dma->num), USB3_AXI_INT_STA);

	FUNC7(usb3, dma->prd_dma, FUNC4(dma->num));
	FUNC7(usb3, dma_con, FUNC3(dma->num));
	FUNC5(usb3, usb3_ep->num);
}