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
struct pci_esp_priv {scalar_t__ dma_status; } ;
struct esp {int config2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ESP_CMD_DMA ; 
 int ESP_CONFIG2_FENAB ; 
 int /*<<< orphan*/  ESP_DMA_CMD ; 
 int ESP_DMA_CMD_DIR ; 
 int ESP_DMA_CMD_IDLE ; 
 int ESP_DMA_CMD_START ; 
 int /*<<< orphan*/  ESP_DMA_SPA ; 
 int /*<<< orphan*/  ESP_DMA_STC ; 
 int /*<<< orphan*/  ESP_TCHI ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 struct pci_esp_priv* FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct esp*,int) ; 

__attribute__((used)) static void FUNC6(struct esp *esp, u32 addr, u32 esp_count,
				 u32 dma_count, int write, u8 cmd)
{
	struct pci_esp_priv *pep = FUNC2(esp);
	u32 val = 0;

	FUNC0(!(cmd & ESP_CMD_DMA));

	pep->dma_status = 0;

	/* Set DMA engine to IDLE */
	if (write)
		/* DMA write direction logic is inverted */
		val |= ESP_DMA_CMD_DIR;
	FUNC4(esp, ESP_DMA_CMD_IDLE | val, ESP_DMA_CMD);

	FUNC4(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
	FUNC4(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
	if (esp->config2 & ESP_CONFIG2_FENAB)
		FUNC4(esp, (esp_count >> 16) & 0xff, ESP_TCHI);

	FUNC3(esp, esp_count, ESP_DMA_STC);
	FUNC3(esp, addr, ESP_DMA_SPA);

	FUNC1("start dma addr[%x] count[%d:%d]\n",
		    addr, esp_count, dma_count);

	FUNC5(esp, cmd);
	/* Send DMA Start command */
	FUNC4(esp, ESP_DMA_CMD_START | val, ESP_DMA_CMD);
}