#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int config_flags; int /*<<< orphan*/  config_regs; TYPE_1__* priv; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef  TYPE_1__ scsi_info_t ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PRESENT_OPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *link)
{
	scsi_info_t *info;

	FUNC0(&link->dev, "qlogic_attach()\n");

	/* Create new SCSI device */
	info = FUNC1(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->p_dev = link;
	link->priv = info;
	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
	link->config_regs = PRESENT_OPTION;

	return FUNC2(link);
}