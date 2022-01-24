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
struct TYPE_2__ {int device_type; } ;
struct device {int dummy; } ;
struct sas_rphy {scalar_t__ q; TYPE_1__ identify; struct device dev; } ;

/* Variables and functions */
#define  SAS_EDGE_EXPANDER_DEVICE 130 
#define  SAS_END_DEVICE 129 
#define  SAS_FANOUT_EXPANDER_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void
FUNC6(struct sas_rphy *rphy)
{
	struct device *dev = &rphy->dev;

	switch (rphy->identify.device_type) {
	case SAS_END_DEVICE:
		FUNC4(dev);
		break;
	case SAS_EDGE_EXPANDER_DEVICE:
	case SAS_FANOUT_EXPANDER_DEVICE:
		FUNC2(dev);
		break;
	default:
		break;
	}

	FUNC3(rphy);
	if (rphy->q)
		FUNC0(rphy->q);
	FUNC5(dev);
	FUNC1(dev);
}