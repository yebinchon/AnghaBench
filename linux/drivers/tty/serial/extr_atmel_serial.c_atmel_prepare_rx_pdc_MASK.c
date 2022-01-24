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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct atmel_uart_port {struct atmel_dma_buffer* pdc_rx; scalar_t__ pdc_rx_idx; scalar_t__ use_pdc_rx; } ;
struct atmel_dma_buffer {int /*<<< orphan*/  dma_addr; scalar_t__ ofs; int /*<<< orphan*/  dma_size; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_RCR ; 
 int /*<<< orphan*/  ATMEL_PDC_RNCR ; 
 int /*<<< orphan*/  ATMEL_PDC_RNPR ; 
 int /*<<< orphan*/  ATMEL_PDC_RPR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PDC_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_uart_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC5(port);
	int i;

	for (i = 0; i < 2; i++) {
		struct atmel_dma_buffer *pdc = &atmel_port->pdc_rx[i];

		pdc->buf = FUNC4(PDC_BUFFER_SIZE, GFP_KERNEL);
		if (pdc->buf == NULL) {
			if (i != 0) {
				FUNC2(port->dev,
					atmel_port->pdc_rx[0].dma_addr,
					PDC_BUFFER_SIZE,
					DMA_FROM_DEVICE);
				FUNC3(atmel_port->pdc_rx[0].buf);
			}
			atmel_port->use_pdc_rx = 0;
			return -ENOMEM;
		}
		pdc->dma_addr = FUNC1(port->dev,
						pdc->buf,
						PDC_BUFFER_SIZE,
						DMA_FROM_DEVICE);
		pdc->dma_size = PDC_BUFFER_SIZE;
		pdc->ofs = 0;
	}

	atmel_port->pdc_rx_idx = 0;

	FUNC0(port, ATMEL_PDC_RPR, atmel_port->pdc_rx[0].dma_addr);
	FUNC0(port, ATMEL_PDC_RCR, PDC_BUFFER_SIZE);

	FUNC0(port, ATMEL_PDC_RNPR,
			  atmel_port->pdc_rx[1].dma_addr);
	FUNC0(port, ATMEL_PDC_RNCR, PDC_BUFFER_SIZE);

	return 0;
}