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
struct rp2_card {scalar_t__ n_ports; scalar_t__ bar0; } ;

/* Variables and functions */
 scalar_t__ PORTS_PER_ASIC ; 
 scalar_t__ RP2_FPGA_CTL0 ; 
 scalar_t__ RP2_FPGA_CTL1 ; 
 scalar_t__ RP2_IRQ_MASK ; 
 int RP2_IRQ_MASK_EN_m ; 
 int /*<<< orphan*/  FUNC0 (struct rp2_card*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct rp2_card *card)
{
	FUNC1(4, card->bar0 + RP2_FPGA_CTL0);
	FUNC1(0, card->bar0 + RP2_FPGA_CTL1);

	FUNC0(card, 0);
	if (card->n_ports >= PORTS_PER_ASIC)
		FUNC0(card, 1);

	FUNC1(RP2_IRQ_MASK_EN_m, card->bar0 + RP2_IRQ_MASK);
}