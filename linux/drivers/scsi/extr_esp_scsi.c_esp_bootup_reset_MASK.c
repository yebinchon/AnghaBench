#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct esp {int /*<<< orphan*/  config1; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset_dma ) (struct esp*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_CFG1 ; 
 int /*<<< orphan*/  ESP_CMD_RS ; 
 int /*<<< orphan*/  ESP_CONFIG1_SRRDISAB ; 
 int /*<<< orphan*/  ESP_INTRPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct esp *esp)
{
	u8 val;

	/* Reset the DMA */
	esp->ops->reset_dma(esp);

	/* Reset the ESP */
	FUNC1(esp);

	/* Reset the SCSI bus, but tell ESP not to generate an irq */
	val = FUNC0(ESP_CFG1);
	val |= ESP_CONFIG1_SRRDISAB;
	FUNC2(val, ESP_CFG1);

	FUNC3(esp, ESP_CMD_RS);
	FUNC5(400);

	FUNC2(esp->config1, ESP_CFG1);

	/* Eat any bitrot in the chip and we are done... */
	FUNC0(ESP_INTRPT);
}