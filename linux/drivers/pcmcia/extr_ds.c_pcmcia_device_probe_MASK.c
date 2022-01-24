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
struct pcmcia_socket {int device_count; int /*<<< orphan*/  ops_mutex; scalar_t__ pcmcia_pfc; } ;
struct pcmcia_driver {int name; int (* probe ) (struct pcmcia_device*) ;int /*<<< orphan*/  owner; } ;
struct pcmcia_device {int vpp; int config_index; int irq; int* resource; scalar_t__ device_no; struct pcmcia_socket* socket; scalar_t__ config_regs; scalar_t__ config_base; int /*<<< orphan*/  func; int /*<<< orphan*/  function_config; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_3__ {scalar_t__* rmask; scalar_t__ base; } ;
typedef  TYPE_1__ cistpl_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CISTPL_CONFIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCMCIA_UEVENT_REQUERY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct pcmcia_device*) ; 
 struct pcmcia_device* FUNC10 (struct device*) ; 
 struct pcmcia_driver* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct pcmcia_device *p_dev;
	struct pcmcia_driver *p_drv;
	struct pcmcia_socket *s;
	cistpl_config_t cis_config;
	int ret = 0;

	dev = FUNC2(dev);
	if (!dev)
		return -ENODEV;

	p_dev = FUNC10(dev);
	p_drv = FUNC11(dev->driver);
	s = p_dev->socket;

	FUNC0(dev, "trying to bind to %s\n", p_drv->name);

	if ((!p_drv->probe) || (!p_dev->function_config) ||
	    (!FUNC12(p_drv->owner))) {
		ret = -EINVAL;
		goto put_dev;
	}

	/* set up some more device information */
	ret = FUNC6(p_dev->socket, p_dev->func, CISTPL_CONFIG,
				&cis_config);
	if (!ret) {
		p_dev->config_base = cis_config.base;
		p_dev->config_regs = cis_config.rmask[0];
		FUNC0(dev, "base %x, regs %x", p_dev->config_base,
			p_dev->config_regs);
	} else {
		FUNC1(dev,
			 "pcmcia: could not parse base and rmask0 of CIS\n");
		p_dev->config_base = 0;
		p_dev->config_regs = 0;
	}

	ret = p_drv->probe(p_dev);
	if (ret) {
		FUNC0(dev, "binding to %s failed with %d\n",
			   p_drv->name, ret);
		goto put_module;
	}
	FUNC0(dev, "%s bound: Vpp %d.%d, idx %x, IRQ %d", p_drv->name,
		p_dev->vpp/10, p_dev->vpp%10, p_dev->config_index, p_dev->irq);
	FUNC0(dev, "resources: ioport %pR %pR iomem %pR %pR %pR",
		p_dev->resource[0], p_dev->resource[1], p_dev->resource[2],
		p_dev->resource[3], p_dev->resource[4]);

	FUNC4(&s->ops_mutex);
	if ((s->pcmcia_pfc) &&
	    (p_dev->socket->device_count == 1) && (p_dev->device_no == 0))
		FUNC7(s, PCMCIA_UEVENT_REQUERY);
	FUNC5(&s->ops_mutex);

put_module:
	if (ret)
		FUNC3(p_drv->owner);
put_dev:
	if (ret)
		FUNC8(dev);
	return ret;
}