#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mapbase; TYPE_3__* state; } ;
struct tegra_uart_port {unsigned char* rx_dma_buf_virt; unsigned char* tx_dma_buf_virt; TYPE_4__ uport; void* tx_dma_buf_phys; struct dma_chan* tx_dma_chan; void* rx_dma_buf_phys; struct dma_chan* rx_dma_chan; TYPE_1__* cdata; } ;
struct dma_slave_config {int dst_maxburst; void* dst_addr_width; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_maxburst; void* src_addr_width; int /*<<< orphan*/  src_addr; } ;
struct dma_chan {int dummy; } ;
typedef  void* dma_addr_t ;
struct TYPE_6__ {unsigned char* buf; } ;
struct TYPE_7__ {TYPE_2__ xmit; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_dma_burst_bytes; } ;

/* Variables and functions */
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  TEGRA_UART_RX_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_chan*) ; 
 struct dma_chan* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_uart_port*,int) ; 

__attribute__((used)) static int FUNC10(struct tegra_uart_port *tup,
			bool dma_to_memory)
{
	struct dma_chan *dma_chan;
	unsigned char *dma_buf;
	dma_addr_t dma_phys;
	int ret;
	struct dma_slave_config dma_sconfig;

	dma_chan = FUNC7(tup->uport.dev,
						dma_to_memory ? "rx" : "tx");
	if (FUNC0(dma_chan)) {
		ret = FUNC1(dma_chan);
		FUNC2(tup->uport.dev,
			"DMA channel alloc failed: %d\n", ret);
		return ret;
	}

	if (dma_to_memory) {
		dma_buf = FUNC3(tup->uport.dev,
				TEGRA_UART_RX_DMA_BUFFER_SIZE,
				 &dma_phys, GFP_KERNEL);
		if (!dma_buf) {
			FUNC2(tup->uport.dev,
				"Not able to allocate the dma buffer\n");
			FUNC6(dma_chan);
			return -ENOMEM;
		}
		dma_sconfig.src_addr = tup->uport.mapbase;
		dma_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
		dma_sconfig.src_maxburst = tup->cdata->max_dma_burst_bytes;
		tup->rx_dma_chan = dma_chan;
		tup->rx_dma_buf_virt = dma_buf;
		tup->rx_dma_buf_phys = dma_phys;
	} else {
		dma_phys = FUNC4(tup->uport.dev,
			tup->uport.state->xmit.buf, UART_XMIT_SIZE,
			DMA_TO_DEVICE);
		if (FUNC5(tup->uport.dev, dma_phys)) {
			FUNC2(tup->uport.dev, "dma_map_single tx failed\n");
			FUNC6(dma_chan);
			return -ENOMEM;
		}
		dma_buf = tup->uport.state->xmit.buf;
		dma_sconfig.dst_addr = tup->uport.mapbase;
		dma_sconfig.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
		dma_sconfig.dst_maxburst = 16;
		tup->tx_dma_chan = dma_chan;
		tup->tx_dma_buf_virt = dma_buf;
		tup->tx_dma_buf_phys = dma_phys;
	}

	ret = FUNC8(dma_chan, &dma_sconfig);
	if (ret < 0) {
		FUNC2(tup->uport.dev,
			"Dma slave config failed, err = %d\n", ret);
		FUNC9(tup, dma_to_memory);
		return ret;
	}

	return 0;
}