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
struct pci_esp_priv {scalar_t__ dma_status; } ;
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_DMA_CMD ; 
 int /*<<< orphan*/  ESP_DMA_CMD_IDLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pci_esp_priv* FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct esp *esp)
{
	struct pci_esp_priv *pep = FUNC1(esp);

	FUNC0("invalidate DMA\n");

	FUNC2(esp, ESP_DMA_CMD_IDLE, ESP_DMA_CMD);
	pep->dma_status = 0;
}