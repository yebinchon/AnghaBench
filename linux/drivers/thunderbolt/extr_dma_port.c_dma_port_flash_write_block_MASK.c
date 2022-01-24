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
typedef  int u32 ;
struct tb_switch {TYPE_1__* tb; } ;
struct tb_dma_port {scalar_t__ base; int /*<<< orphan*/  port; struct tb_switch* sw; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int DMA_PORT_CSS_ADDRESS ; 
 int /*<<< orphan*/  DMA_PORT_TIMEOUT ; 
 scalar_t__ MAIL_DATA ; 
 int MAIL_IN_ADDRESS_MASK ; 
 int MAIL_IN_ADDRESS_SHIFT ; 
 int MAIL_IN_CMD_FLASH_WRITE ; 
 int MAIL_IN_CMD_SHIFT ; 
 int MAIL_IN_CSS ; 
 int MAIL_IN_DWORDS_MASK ; 
 int MAIL_IN_DWORDS_SHIFT ; 
 int MAIL_IN_OP_REQUEST ; 
 int FUNC0 (struct tb_dma_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 

__attribute__((used)) static int FUNC3(struct tb_dma_port *dma, u32 address,
				      const void *buf, u32 size)
{
	struct tb_switch *sw = dma->sw;
	u32 in, dwaddress, dwords;
	int ret;

	dwords = size / 4;

	/* Write the block to MAIL_DATA registers */
	ret = FUNC1(sw->tb->ctl, buf, FUNC2(sw), dma->port,
			    dma->base + MAIL_DATA, dwords, DMA_PORT_TIMEOUT);

	in = MAIL_IN_CMD_FLASH_WRITE << MAIL_IN_CMD_SHIFT;

	/* CSS header write is always done to the same magic address */
	if (address >= DMA_PORT_CSS_ADDRESS) {
		dwaddress = DMA_PORT_CSS_ADDRESS;
		in |= MAIL_IN_CSS;
	} else {
		dwaddress = address / 4;
	}

	in |= ((dwords - 1) << MAIL_IN_DWORDS_SHIFT) & MAIL_IN_DWORDS_MASK;
	in |= (dwaddress << MAIL_IN_ADDRESS_SHIFT) & MAIL_IN_ADDRESS_MASK;
	in |= MAIL_IN_OP_REQUEST;

	return FUNC0(dma, in, DMA_PORT_TIMEOUT);
}