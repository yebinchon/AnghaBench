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
struct pci_esp_priv {int dma_status; } ;
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_DMA_STATUS ; 
 int ESP_DMA_STAT_ABORT ; 
 int ESP_DMA_STAT_DONE ; 
 int ESP_DMA_STAT_ERROR ; 
 int ESP_DMA_STAT_SCSIINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct pci_esp_priv* FUNC1 (struct esp*) ; 
 int FUNC2 (struct esp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct esp *esp)
{
	struct pci_esp_priv *pep = FUNC1(esp);

	pep->dma_status = FUNC2(esp, ESP_DMA_STATUS);
	FUNC0("dma intr dreg[%02x]\n", pep->dma_status);

	if (pep->dma_status & (ESP_DMA_STAT_ERROR |
			       ESP_DMA_STAT_ABORT |
			       ESP_DMA_STAT_DONE |
			       ESP_DMA_STAT_SCSIINT))
		return 1;

	return 0;
}