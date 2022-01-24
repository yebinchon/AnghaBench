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
struct ssb_sprom {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  vendor; } ;
struct ssb_init_invariants {int has_cardbus_slot; TYPE_1__ sprom; TYPE_1__ boardinfo; } ;
struct ssb_bus {int dummy; } ;
struct ssb_boardinfo {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_BOARDVENDOR_BCM ; 
 int FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_bus*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct ssb_bus *bus,
				struct ssb_init_invariants *iv)
{
	char buf[20];
	int len, err;

	/* Fill boardinfo structure */
	FUNC2(&iv->boardinfo, 0, sizeof(struct ssb_boardinfo));

	len = FUNC0("boardvendor", buf, sizeof(buf));
	if (len > 0) {
		err = FUNC1(FUNC6(buf), 0, &iv->boardinfo.vendor);
		if (err)
			FUNC3("Couldn't parse nvram board vendor entry with value \"%s\"\n",
				buf);
	}
	if (!iv->boardinfo.vendor)
		iv->boardinfo.vendor = SSB_BOARDVENDOR_BCM;

	len = FUNC0("boardtype", buf, sizeof(buf));
	if (len > 0) {
		err = FUNC1(FUNC6(buf), 0, &iv->boardinfo.type);
		if (err)
			FUNC3("Couldn't parse nvram board type entry with value \"%s\"\n",
				buf);
	}

	FUNC2(&iv->sprom, 0, sizeof(struct ssb_sprom));
	FUNC5(bus, &iv->sprom);

	if (FUNC0("cardbus", buf, sizeof(buf)) >= 0)
		iv->has_cardbus_slot = !!FUNC4(buf, NULL, 10);

	return 0;
}