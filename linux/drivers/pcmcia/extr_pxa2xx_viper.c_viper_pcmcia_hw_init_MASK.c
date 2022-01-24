#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct arcom_pcmcia_pdata {int /*<<< orphan*/  pwr_gpio; int /*<<< orphan*/  rdy_gpio; int /*<<< orphan*/  cd_gpio; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 size_t SOC_STAT_CD ; 
 size_t SOC_STAT_RDY ; 
 TYPE_2__* arcom_pcmcia_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct arcom_pcmcia_pdata* FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct soc_pcmcia_socket *skt)
{
	struct arcom_pcmcia_pdata *pdata = FUNC6();
	unsigned long flags;

	skt->stat[SOC_STAT_CD].gpio = pdata->cd_gpio;
	skt->stat[SOC_STAT_CD].name = "PCMCIA_CD";
	skt->stat[SOC_STAT_RDY].gpio = pdata->rdy_gpio;
	skt->stat[SOC_STAT_RDY].name = "CF ready";

	if (FUNC3(pdata->pwr_gpio, "CF power"))
		goto err_request_pwr;

	FUNC5(flags);

	if (FUNC1(pdata->pwr_gpio, 0)) {
		FUNC4(flags);
		goto err_dir;
	}

	FUNC4(flags);

	return 0;

err_dir:
	FUNC2(pdata->pwr_gpio);
err_request_pwr:
	FUNC0(&arcom_pcmcia_dev->dev, "Failed to setup PCMCIA GPIOs\n");
	return -1;
}