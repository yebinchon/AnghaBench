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
struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO60_HX4700_CF_RNB ; 
 int /*<<< orphan*/  GPIOD4_CF_nCD ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 size_t SOC_STAT_CD ; 
 size_t SOC_STAT_RDY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpios ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct soc_pcmcia_socket *skt)
{
	int ret;

	ret = FUNC1(gpios, FUNC0(gpios));
	if (ret)
		goto out;

	/*
	 * IRQ type must be set before soc_pcmcia_hw_init() calls request_irq().
	 * The asic3 default IRQ type is level trigger low level detect, exactly
	 * the the signal present on GPIOD4_CF_nCD when a CF card is inserted.
	 * If the IRQ type is not changed, the asic3 interrupt handler will loop
	 * repeatedly because it is unable to clear the level trigger interrupt.
	 */
	FUNC3(FUNC2(GPIOD4_CF_nCD), IRQ_TYPE_EDGE_BOTH);

	skt->stat[SOC_STAT_CD].gpio = GPIOD4_CF_nCD;
	skt->stat[SOC_STAT_CD].name = "PCMCIA CD";
	skt->stat[SOC_STAT_RDY].gpio = GPIO60_HX4700_CF_RNB;
	skt->stat[SOC_STAT_RDY].name = "PCMCIA Ready";

out:
	return ret;
}