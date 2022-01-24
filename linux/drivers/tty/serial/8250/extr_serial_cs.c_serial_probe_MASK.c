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
struct serial_info {struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int config_flags; struct serial_info* priv; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int CONF_ENABLE_SPKR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ do_sound ; 
 struct serial_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *link)
{
	struct serial_info *info;

	FUNC0(&link->dev, "serial_attach()\n");

	/* Create new serial device */
	info = FUNC1(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->p_dev = link;
	link->priv = info;

	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
	if (do_sound)
		link->config_flags |= CONF_ENABLE_SPKR;

	return FUNC2(link);
}