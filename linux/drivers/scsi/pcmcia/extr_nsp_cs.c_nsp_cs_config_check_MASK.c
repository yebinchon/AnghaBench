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
struct pcmcia_device {scalar_t__ config_index; TYPE_2__** resource; int /*<<< orphan*/  card_addr; } ;
struct TYPE_5__ {unsigned long MmioAddress; scalar_t__ MmioLength; } ;
typedef  TYPE_1__ nsp_hw_data ;
struct TYPE_6__ {int flags; int end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 int WIN_DATA_WIDTH_16 ; 
 int WIN_ENABLE ; 
 int WIN_MEMORY_TYPE_CM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 scalar_t__ FUNC3 (struct pcmcia_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pcmcia_device*) ; 
 scalar_t__ FUNC5 (struct pcmcia_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_device *p_dev, void *priv_data)
{
	nsp_hw_data		*data = priv_data;

	if (p_dev->config_index == 0)
		return -ENODEV;

	/* This reserves IO space but doesn't actually enable it */
	if (FUNC4(p_dev) != 0)
		goto next_entry;

	if (FUNC6(p_dev->resource[2])) {
		p_dev->resource[2]->flags |= (WIN_DATA_WIDTH_16 |
					WIN_MEMORY_TYPE_CM |
					WIN_ENABLE);
		if (p_dev->resource[2]->end < 0x1000)
			p_dev->resource[2]->end = 0x1000;
		if (FUNC5(p_dev, p_dev->resource[2], 0) != 0)
			goto next_entry;
		if (FUNC3(p_dev, p_dev->resource[2],
						p_dev->card_addr) != 0)
			goto next_entry;

		data->MmioAddress = (unsigned long)
			FUNC0(p_dev->resource[2]->start,
					FUNC6(p_dev->resource[2]));
		data->MmioLength  = FUNC6(p_dev->resource[2]);
	}
	/* If we got this far, we're cool! */
	return 0;

next_entry:
	FUNC1(NSP_DEBUG_INIT, "next");
	FUNC2(p_dev);
	return -ENODEV;
}