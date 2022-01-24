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
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGLE_IV ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct uea_softc*) ; 
 struct uea_softc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  uea_mutex ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	int ret = -ENODEV;
	struct uea_softc *sc;
	char *delin = "GOOD";

	FUNC2(&uea_mutex);
	sc = FUNC1(dev);
	if (!sc)
		goto out;

	if (FUNC0(sc) == EAGLE_IV) {
		if (sc->stats.phy.flags & 0x4000)
			delin = "RESET";
		else if (sc->stats.phy.flags & 0x0001)
			delin = "LOSS";
	} else {
		if (sc->stats.phy.flags & 0x0C00)
			delin = "ERROR";
		else if (sc->stats.phy.flags & 0x0030)
			delin = "LOSS";
	}

	ret = FUNC4(buf, "%s\n", delin);
out:
	FUNC3(&uea_mutex);
	return ret;
}