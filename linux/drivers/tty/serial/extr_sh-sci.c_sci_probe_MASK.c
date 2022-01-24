#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fifosize; scalar_t__ type; } ;
struct sci_port {TYPE_1__ port; } ;
struct TYPE_6__ {struct plat_sci_port* platform_data; scalar_t__ of_node; } ;
struct platform_device {unsigned int id; TYPE_2__ dev; } ;
struct plat_sci_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ PORT_HSCIF ; 
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  dev_attr_rx_fifo_timeout ; 
 int /*<<< orphan*/  dev_attr_rx_fifo_trigger ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct sci_port*) ; 
 struct plat_sci_port* FUNC6 (struct platform_device*,unsigned int*) ; 
 struct sci_port* sci_ports ; 
 int /*<<< orphan*/  sci_ports_in_use ; 
 int FUNC7 (struct platform_device*) ; 
 int FUNC8 (struct platform_device*,unsigned int,struct plat_sci_port*,struct sci_port*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct plat_sci_port *p;
	struct sci_port *sp;
	unsigned int dev_id;
	int ret;

	/*
	 * If we've come here via earlyprintk initialization, head off to
	 * the special early probe. We don't have sufficient device state
	 * to make it beyond this yet.
	 */
	if (FUNC4(dev))
		return FUNC7(dev);

	if (dev->dev.of_node) {
		p = FUNC6(dev, &dev_id);
		if (p == NULL)
			return -EINVAL;
	} else {
		p = dev->dev.platform_data;
		if (p == NULL) {
			FUNC1(&dev->dev, "no platform data supplied\n");
			return -EINVAL;
		}

		dev_id = dev->id;
	}

	sp = &sci_ports[dev_id];
	FUNC5(dev, sp);

	ret = FUNC8(dev, dev_id, p, sp);
	if (ret)
		return ret;

	if (sp->port.fifosize > 1) {
		ret = FUNC2(&dev->dev, &dev_attr_rx_fifo_trigger);
		if (ret)
			return ret;
	}
	if (sp->port.type == PORT_SCIFA || sp->port.type == PORT_SCIFB ||
	    sp->port.type == PORT_HSCIF) {
		ret = FUNC2(&dev->dev, &dev_attr_rx_fifo_timeout);
		if (ret) {
			if (sp->port.fifosize > 1) {
				FUNC3(&dev->dev,
						   &dev_attr_rx_fifo_trigger);
			}
			return ret;
		}
	}

#ifdef CONFIG_SH_STANDARD_BIOS
	sh_bios_gdb_detach();
#endif

	sci_ports_in_use |= FUNC0(dev_id);
	return 0;
}