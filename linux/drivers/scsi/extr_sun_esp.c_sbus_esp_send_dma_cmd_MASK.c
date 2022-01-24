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
typedef  int u8 ;
typedef  int u32 ;
struct esp {scalar_t__ rev; int prev_hme_dmacsr; scalar_t__ dmarev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_ADDR ; 
 int /*<<< orphan*/  DMA_COUNT ; 
 int /*<<< orphan*/  DMA_CSR ; 
 int DMA_ENABLE ; 
 int DMA_SCSI_DISAB ; 
 int DMA_ST_WRITE ; 
 int ESP_CMD_DMA ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 scalar_t__ FASHME ; 
 int /*<<< orphan*/  FAS_RHI ; 
 int /*<<< orphan*/  FAS_RLO ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ dvmaesc1 ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct esp*,int) ; 

__attribute__((used)) static void FUNC6(struct esp *esp, u32 addr, u32 esp_count,
				  u32 dma_count, int write, u8 cmd)
{
	u32 csr;

	FUNC0(!(cmd & ESP_CMD_DMA));

	FUNC4(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
	FUNC4(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
	if (esp->rev == FASHME) {
		FUNC4(esp, (esp_count >> 16) & 0xff, FAS_RLO);
		FUNC4(esp, 0, FAS_RHI);

		FUNC5(esp, cmd);

		csr = esp->prev_hme_dmacsr;
		csr |= DMA_SCSI_DISAB | DMA_ENABLE;
		if (write)
			csr |= DMA_ST_WRITE;
		else
			csr &= ~DMA_ST_WRITE;
		esp->prev_hme_dmacsr = csr;

		FUNC3(dma_count, DMA_COUNT);
		FUNC3(addr, DMA_ADDR);
		FUNC3(csr, DMA_CSR);
	} else {
		csr = FUNC2(DMA_CSR);
		csr |= DMA_ENABLE;
		if (write)
			csr |= DMA_ST_WRITE;
		else
			csr &= ~DMA_ST_WRITE;
		FUNC3(csr, DMA_CSR);
		if (esp->dmarev == dvmaesc1) {
			u32 end = FUNC1(addr + dma_count + 16U);
			FUNC3(end - addr, DMA_COUNT);
		}
		FUNC3(addr, DMA_ADDR);

		FUNC5(esp, cmd);
	}

}