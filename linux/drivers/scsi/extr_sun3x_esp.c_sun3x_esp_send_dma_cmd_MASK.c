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
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_ADDR ; 
 int /*<<< orphan*/  DMA_CSR ; 
 int DMA_ENABLE ; 
 int DMA_ST_WRITE ; 
 int ESP_CMD_DMA ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct esp *esp, u32 addr, u32 esp_count,
				  u32 dma_count, int write, u8 cmd)
{
	u32 csr;

	FUNC0(!(cmd & ESP_CMD_DMA));

	FUNC4(esp, (esp_count >> 0) & 0xff, ESP_TCLOW);
	FUNC4(esp, (esp_count >> 8) & 0xff, ESP_TCMED);
	csr = FUNC1(DMA_CSR);
	csr |= DMA_ENABLE;
	if (write)
		csr |= DMA_ST_WRITE;
	else
		csr &= ~DMA_ST_WRITE;
	FUNC2(csr, DMA_CSR);
	FUNC2(addr, DMA_ADDR);

	FUNC3(esp, cmd);
}