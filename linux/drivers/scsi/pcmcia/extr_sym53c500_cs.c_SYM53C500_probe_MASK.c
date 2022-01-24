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
struct scsi_info_t {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct scsi_info_t* priv; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct scsi_info_t* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct pcmcia_device *link)
{
	struct scsi_info_t *info;

	FUNC1(&link->dev, "SYM53C500_attach()\n");

	/* Create new SCSI device */
	info = FUNC2(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->p_dev = link;
	link->priv = info;
	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

	return FUNC0(link);
}