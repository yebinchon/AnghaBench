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
typedef  int u8 ;
struct ssb_bus {int mapped_pcmcia_seg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SSB_BAR0_MAX_RETRIES ; 
 int /*<<< orphan*/  SSB_PCMCIA_MEMSEG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ssb_bus*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct ssb_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ssb_bus *bus, u8 seg)
{
	int attempts = 0;
	int err;
	u8 val;

	FUNC0((seg != 0) && (seg != 1));
	while (1) {
		err = FUNC3(bus, SSB_PCMCIA_MEMSEG, seg);
		if (err)
			goto error;
		err = FUNC2(bus, SSB_PCMCIA_MEMSEG, &val);
		if (err)
			goto error;
		if (val == seg)
			break;

		err = -ETIMEDOUT;
		if (FUNC5(attempts++ > SSB_BAR0_MAX_RETRIES))
			goto error;
		FUNC4(10);
	}
	bus->mapped_pcmcia_seg = seg;

	return 0;
error:
	FUNC1("Failed to switch pcmcia segment\n");
	return err;
}