#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; } ;
struct device {TYPE_1__* bus; } ;
struct uwb_dev {TYPE_3__* bce; struct device dev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  macbuf ;
typedef  int /*<<< orphan*/  devbuf ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct uwb_dev *uwb_dev, struct uwb_rc *rc)
{
	struct device *dev = &uwb_dev->dev;
	char macbuf[UWB_ADDR_STRSIZE], devbuf[UWB_ADDR_STRSIZE];

	FUNC7(macbuf, sizeof(macbuf), &uwb_dev->mac_addr);
	FUNC4(devbuf, sizeof(devbuf), &uwb_dev->dev_addr);
	FUNC0(dev, "uwb device (mac %s dev %s) disconnected from %s %s\n",
		 macbuf, devbuf,
		 uwb_dev->dev.bus->name,
		 rc ? FUNC1(&(rc->uwb_dev.dev)) : "");
	FUNC6(uwb_dev);
	FUNC2(&uwb_dev->bce->node);
	FUNC3(uwb_dev->bce);
	FUNC5(uwb_dev);	/* for the creation in _onair() */

	return 0;
}