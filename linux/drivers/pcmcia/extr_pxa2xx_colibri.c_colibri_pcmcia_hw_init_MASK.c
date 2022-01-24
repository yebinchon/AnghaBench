#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* pci_irq; } ;
struct soc_pcmcia_socket {TYPE_2__* stat; TYPE_1__ socket; } ;
struct TYPE_8__ {int /*<<< orphan*/  gpio; } ;
struct TYPE_7__ {char* name; void* irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 size_t DETECT ; 
 size_t READY ; 
 size_t SOC_STAT_CD ; 
 TYPE_3__* colibri_pcmcia_gpios ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct soc_pcmcia_socket *skt)
{
	int ret;

	ret = FUNC1(colibri_pcmcia_gpios,
				FUNC0(colibri_pcmcia_gpios));
	if (ret)
		goto err1;

	skt->socket.pci_irq = FUNC2(colibri_pcmcia_gpios[READY].gpio);
	skt->stat[SOC_STAT_CD].irq = FUNC2(colibri_pcmcia_gpios[DETECT].gpio);
	skt->stat[SOC_STAT_CD].name = "PCMCIA CD";

err1:
	return ret;
}