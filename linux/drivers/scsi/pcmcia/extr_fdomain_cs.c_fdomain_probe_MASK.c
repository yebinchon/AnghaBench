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
struct pcmcia_device {int config_flags; TYPE_1__** resource; struct Scsi_Host* priv; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  config_regs; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENODEV ; 
 int /*<<< orphan*/  FDOMAIN_REGION_SIZE ; 
 int /*<<< orphan*/  PRESENT_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  fdomain_config_check ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int FUNC3 (struct pcmcia_device*) ; 
 int FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *link)
{
	int ret;
	struct Scsi_Host *sh;

	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
	link->config_regs = PRESENT_OPTION;

	ret = FUNC4(link, fdomain_config_check, NULL);
	if (ret)
		return ret;

	ret = FUNC3(link);
	if (ret)
		goto fail_disable;

	if (!FUNC6(link->resource[0]->start, FDOMAIN_REGION_SIZE,
			    "fdomain_cs"))
		goto fail_disable;

	sh = FUNC1(link->resource[0]->start, link->irq, 7, &link->dev);
	if (!sh) {
		FUNC0(&link->dev, "Controller initialization failed");
		ret = -ENODEV;
		goto fail_release;
	}

	link->priv = sh;

	return 0;

fail_release:
	FUNC5(link->resource[0]->start, FDOMAIN_REGION_SIZE);
fail_disable:
	FUNC2(link);
	return ret;
}