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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int dummy; } ;
struct sprd_uart_dma {int /*<<< orphan*/  chn; int /*<<< orphan*/  cookie; int /*<<< orphan*/  phys_addr; } ;
struct dma_async_tx_descriptor {struct uart_port* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_async_tx_callback ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SPRD_DMA_CHN_MODE_NONE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRD_DMA_FRAG_REQ ; 
 int /*<<< orphan*/  SPRD_DMA_NO_TRG ; 
 int /*<<< orphan*/  SPRD_DMA_TRANS_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port,
				struct sprd_uart_dma *ud, u32 trans_len,
				enum dma_transfer_direction direction,
				dma_async_tx_callback callback)
{
	struct dma_async_tx_descriptor *dma_des;
	unsigned long flags;

	flags = FUNC0(SPRD_DMA_CHN_MODE_NONE,
			       SPRD_DMA_NO_TRG,
			       SPRD_DMA_FRAG_REQ,
			       SPRD_DMA_TRANS_INT);

	dma_des = FUNC3(ud->chn, ud->phys_addr, trans_len,
					      direction, flags);
	if (!dma_des)
		return -ENODEV;

	dma_des->callback = callback;
	dma_des->callback_param = port;

	ud->cookie = FUNC4(dma_des);
	if (FUNC2(ud->cookie))
		return FUNC2(ud->cookie);

	FUNC1(ud->chn);

	return 0;
}