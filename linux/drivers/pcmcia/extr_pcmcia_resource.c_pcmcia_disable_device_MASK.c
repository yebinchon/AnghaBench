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
struct resource {int flags; } ;
struct pcmcia_device {scalar_t__ _irq; int /*<<< orphan*/  priv; int /*<<< orphan*/  irq; struct resource** resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_IO_WIN ; 
 int MAX_WIN ; 
 int WIN_FLAGS_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*,struct resource*) ; 

void FUNC5(struct pcmcia_device *p_dev)
{
	int i;

	FUNC0(&p_dev->dev, "disabling device\n");

	for (i = 0; i < MAX_WIN; i++) {
		struct resource *res = p_dev->resource[MAX_IO_WIN + i];
		if (res->flags & WIN_FLAGS_REQ)
			FUNC4(p_dev, res);
	}

	FUNC2(p_dev);
	FUNC3(p_dev);
	if (p_dev->_irq) {
		FUNC1(p_dev->irq, p_dev->priv);
		p_dev->_irq = 0;
	}
}