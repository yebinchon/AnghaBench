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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ SSB_DEV_USB11_HOSTDEV ; 
 int /*<<< orphan*/  SSB_HCD_TMSLOW_HOSTMODE ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*) ; 

__attribute__((used)) static u32 FUNC2(struct ssb_device *dev)
{
	u32 flags = 0;

	if (dev->id.coreid == SSB_DEV_USB11_HOSTDEV)
		/* Put the device into host-mode. */
		flags |= SSB_HCD_TMSLOW_HOSTMODE;

	FUNC0(dev, flags);

	FUNC1(dev);

	return flags;
}