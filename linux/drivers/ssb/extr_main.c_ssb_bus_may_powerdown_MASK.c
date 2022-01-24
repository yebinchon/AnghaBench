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
struct ssb_chipcommon {TYPE_2__* dev; } ;
struct ssb_bus {scalar_t__ bustype; scalar_t__ powered_up; struct ssb_chipcommon chipco; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ SSB_BUSTYPE_SSB ; 
 int /*<<< orphan*/  SSB_CLKMODE_SLOW ; 
 int SSB_GPIO_PLL ; 
 int SSB_GPIO_XTAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_bus*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct ssb_bus *bus)
{
	struct ssb_chipcommon *cc;
	int err = 0;

	/* On buses where more than one core may be working
	 * at a time, we must not powerdown stuff if there are
	 * still cores that may want to run. */
	if (bus->bustype == SSB_BUSTYPE_SSB)
		goto out;

	cc = &bus->chipco;

	if (!cc->dev)
		goto out;
	if (cc->dev->id.revision < 5)
		goto out;

	FUNC1(cc, SSB_CLKMODE_SLOW);
	err = FUNC2(bus, SSB_GPIO_XTAL | SSB_GPIO_PLL, 0);
	if (err)
		goto error;
out:
	bus->powered_up = 0;
	return err;
error:
	FUNC0("Bus powerdown failed\n");
	goto out;
}