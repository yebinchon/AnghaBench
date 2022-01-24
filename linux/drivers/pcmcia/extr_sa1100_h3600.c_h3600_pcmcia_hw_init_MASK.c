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
struct soc_pcmcia_socket {int nr; TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  H3XXX_EGPIO_CARD_RESET ; 
 int /*<<< orphan*/  H3XXX_EGPIO_OPT_NVRAM_ON ; 
 int /*<<< orphan*/  H3XXX_EGPIO_OPT_ON ; 
 int /*<<< orphan*/  H3XXX_EGPIO_OPT_RESET ; 
 int /*<<< orphan*/  H3XXX_GPIO_PCMCIA_IRQ0 ; 
 size_t SOC_STAT_CD ; 
 size_t SOC_STAT_RDY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct soc_pcmcia_socket*) ; 

__attribute__((used)) static int FUNC4(struct soc_pcmcia_socket *skt)
{
	int err;

	skt->stat[SOC_STAT_CD].name = skt->nr ? "pcmcia1-detect" : "pcmcia0-detect";
	skt->stat[SOC_STAT_RDY].name = skt->nr ? "pcmcia1-ready" : "pcmcia0-ready";

	err = FUNC3(skt);
	if (err)
		return err;

	switch (skt->nr) {
	case 0:
		err = FUNC2(H3XXX_EGPIO_OPT_NVRAM_ON, "OPT NVRAM ON");
		if (err)
			goto err01;
		err = FUNC0(H3XXX_EGPIO_OPT_NVRAM_ON, 0);
		if (err)
			goto err03;
		err = FUNC2(H3XXX_EGPIO_OPT_ON, "OPT ON");
		if (err)
			goto err03;
		err = FUNC0(H3XXX_EGPIO_OPT_ON, 0);
		if (err)
			goto err04;
		err = FUNC2(H3XXX_EGPIO_OPT_RESET, "OPT RESET");
		if (err)
			goto err04;
		err = FUNC0(H3XXX_EGPIO_OPT_RESET, 0);
		if (err)
			goto err05;
		err = FUNC2(H3XXX_EGPIO_CARD_RESET, "PCMCIA CARD RESET");
		if (err)
			goto err05;
		err = FUNC0(H3XXX_EGPIO_CARD_RESET, 0);
		if (err)
			goto err06;
		break;
	case 1:
		break;
	}
	return 0;

err06:	FUNC1(H3XXX_EGPIO_CARD_RESET);
err05:	FUNC1(H3XXX_EGPIO_OPT_RESET);
err04:	FUNC1(H3XXX_EGPIO_OPT_ON);
err03:	FUNC1(H3XXX_EGPIO_OPT_NVRAM_ON);
err01:	FUNC1(H3XXX_GPIO_PCMCIA_IRQ0);
	return err;
}