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
typedef  int /*<<< orphan*/  u16 ;
struct ssb_bus {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROMCTL_WRITEDIS ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROMCTL_WRITEEN ; 
 size_t SSB_PCMCIA_SPROM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ssb_bus*,int,int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC5(struct ssb_bus *bus, const u16 *sprom)
{
	int i, err;
	bool failed = 0;
	size_t size = SSB_PCMCIA_SPROM_SIZE;

	FUNC2("Writing SPROM. Do NOT turn off the power! Please stand by...\n");
	err = FUNC3(bus, SSB_PCMCIA_SPROMCTL_WRITEEN);
	if (err) {
		FUNC2("Could not enable SPROM write access\n");
		return -EBUSY;
	}
	FUNC2("[ 0%%");
	FUNC0(500);
	for (i = 0; i < size; i++) {
		if (i == size / 4)
			FUNC1("25%%");
		else if (i == size / 2)
			FUNC1("50%%");
		else if (i == (size * 3) / 4)
			FUNC1("75%%");
		else if (i % 2)
			FUNC1(".");
		err = FUNC4(bus, i, sprom[i]);
		if (err) {
			FUNC2("Failed to write to SPROM\n");
			failed = 1;
			break;
		}
	}
	err = FUNC3(bus, SSB_PCMCIA_SPROMCTL_WRITEDIS);
	if (err) {
		FUNC2("Could not disable SPROM write access\n");
		failed = 1;
	}
	FUNC0(500);
	if (!failed) {
		FUNC1("100%% ]\n");
		FUNC2("SPROM written\n");
	}

	return failed ? -EBUSY : 0;
}