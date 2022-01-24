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
struct subchannel_id {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {int st; int /*<<< orphan*/  dev; } ;
struct schib {TYPE_1__ pmcw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int ENODEV ; 
#define  SUBCHANNEL_TYPE_IO 129 
#define  SUBCHANNEL_TYPE_MSG 128 
 int /*<<< orphan*/  FUNC1 (struct schib*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct subchannel_id schid,
				   struct schib *schib)
{
	int err;

	switch (schib->pmcw.st) {
	case SUBCHANNEL_TYPE_IO:
	case SUBCHANNEL_TYPE_MSG:
		if (!FUNC1(schib))
			err = -ENODEV;
		else if (FUNC2(schid.ssid, schib->pmcw.dev)) {
			FUNC0(6, "Blacklisted device detected "
				      "at devno %04X, subchannel set %x\n",
				      schib->pmcw.dev, schid.ssid);
			err = -ENODEV;
		} else
			err = 0;
		break;
	default:
		err = 0;
	}
	if (err)
		goto out;

	FUNC0(4, "Subchannel 0.%x.%04x reports subchannel type %04X\n",
		      schid.ssid, schid.sch_no, schib->pmcw.st);
out:
	return err;
}