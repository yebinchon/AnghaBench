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
struct serial_info {int multi; scalar_t__ manfid; scalar_t__ prodid; int c950ctrl; TYPE_1__* quirk; } ;
struct pcmcia_device {int config_index; int /*<<< orphan*/  irq; TYPE_2__** resource; int /*<<< orphan*/  dev; struct serial_info* priv; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* wakeup ) (struct pcmcia_device*) ;int /*<<< orphan*/  (* config ) (struct pcmcia_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MANFID_OXSEMI ; 
 scalar_t__ MANFID_POSSIO ; 
 scalar_t__ PRODID_POSSIO_GCC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  multi_config_check ; 
 int /*<<< orphan*/  multi_config_check_notpicky ; 
 int FUNC1 (struct pcmcia_device*) ; 
 scalar_t__ FUNC2 (struct pcmcia_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct pcmcia_device*,struct serial_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *link)
{
	struct serial_info *info = link->priv;
	int i, base2 = 0;

	/* First, look for a generic full-sized window */
	if (!FUNC2(link, multi_config_check, &info->multi))
		base2 = link->resource[0]->start + 8;
	else {
		/* If that didn't work, look for two windows */
		info->multi = 2;
		if (FUNC2(link, multi_config_check_notpicky,
				       &base2)) {
			FUNC0(&link->dev,
				 "no usable port range found, giving up\n");
			return -ENODEV;
		}
	}

	if (!link->irq)
		FUNC0(&link->dev, "no usable IRQ found, continuing...\n");

	/*
	 * Apply any configuration quirks.
	 */
	if (info->quirk && info->quirk->config)
		info->quirk->config(link);

	i = FUNC1(link);
	if (i != 0)
		return -ENODEV;

	/* The Oxford Semiconductor OXCF950 cards are in fact single-port:
	 * 8 registers are for the UART, the others are extra registers.
	 * Siemen's MC45 PCMCIA (Possio's GCC) is OXCF950 based too.
	 */
	if (info->manfid == MANFID_OXSEMI || (info->manfid == MANFID_POSSIO &&
				info->prodid == PRODID_POSSIO_GCC)) {
		int err;

		if (link->config_index == 1 ||
		    link->config_index == 3) {
			err = FUNC3(link, info, base2,
					link->irq);
			base2 = link->resource[0]->start;
		} else {
			err = FUNC3(link, info, link->resource[0]->start,
					link->irq);
		}
		info->c950ctrl = base2;

		/*
		 * FIXME: We really should wake up the port prior to
		 * handing it over to the serial layer.
		 */
		if (info->quirk && info->quirk->wakeup)
			info->quirk->wakeup(link);

		return 0;
	}

	FUNC3(link, info, link->resource[0]->start, link->irq);
	for (i = 0; i < info->multi - 1; i++)
		FUNC3(link, info, base2 + (8 * i),
				link->irq);
	return 0;
}