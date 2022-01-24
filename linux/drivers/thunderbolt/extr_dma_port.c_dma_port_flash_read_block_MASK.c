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
 int /*<<< orphan*/  DMA_PORT_TIMEOUT ; 
 scalar_t__ MAIL_DATA ; 
 int MAIL_DATA_DWORDS ; 
 int MAIL_IN_ADDRESS_MASK ; 
 int MAIL_IN_ADDRESS_SHIFT ; 
 int MAIL_IN_CMD_FLASH_READ ; 
 int MAIL_IN_CMD_SHIFT ; 
 int MAIL_IN_DWORDS_MASK ; 
 int MAIL_IN_DWORDS_SHIFT ; 
 int MAIL_IN_OP_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tb_dma_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 

__attribute__((used)) static int FUNC3(struct tb_dma_port *dma, u32 address,
				     void *buf, u32 size)
{
	struct tb_switch *sw = dma->sw;
	u32 in, dwaddress, dwords;
	int ret;

	dwaddress = address / 4;
	dwords = size / 4;

	in = MAIL_IN_CMD_FLASH_READ << MAIL_IN_CMD_SHIFT;
	if (dwords < MAIL_DATA_DWORDS)
		in |= (dwords << MAIL_IN_DWORDS_SHIFT) & MAIL_IN_DWORDS_MASK;
	in |= (dwaddress << MAIL_IN_ADDRESS_SHIFT) & MAIL_IN_ADDRESS_MASK;
	in |= MAIL_IN_OP_REQUEST;

	ret = FUNC1(dma, in, DMA_PORT_TIMEOUT);
	if (ret)
		return ret;

	return FUNC0(sw->tb->ctl, buf, FUNC2(sw), dma->port,
			     dma->base + MAIL_DATA, dwords, DMA_PORT_TIMEOUT);
}