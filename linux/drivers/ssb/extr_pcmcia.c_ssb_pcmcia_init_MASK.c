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
struct ssb_bus {scalar_t__ bustype; TYPE_1__* host_pcmcia; int /*<<< orphan*/  sprom_mutex; int /*<<< orphan*/  sprom_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SSB_BUSTYPE_PCMCIA ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROM_SIZE ; 
 int /*<<< orphan*/  dev_attr_ssb_sprom ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct ssb_bus*) ; 

int FUNC4(struct ssb_bus *bus)
{
	int err;

	if (bus->bustype != SSB_BUSTYPE_PCMCIA)
		return 0;

	err = FUNC3(bus);
	if (err)
		goto error;

	bus->sprom_size = SSB_PCMCIA_SPROM_SIZE;
	FUNC1(&bus->sprom_mutex);
	err = FUNC0(&bus->host_pcmcia->dev, &dev_attr_ssb_sprom);
	if (err)
		goto error;

	return 0;
error:
	FUNC2("Failed to initialize PCMCIA host device\n");
	return err;
}