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
struct us_data {int /*<<< orphan*/  extra_destructor; int /*<<< orphan*/  extra; TYPE_3__* pusb_dev; } ;
struct sddr09_card_info {int dummy; } ;
struct TYPE_6__ {TYPE_2__* actconfig; } ;
struct TYPE_4__ {int bConfigurationValue; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  sddr09_card_info_destructor ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct us_data *us) {
	int result;

	/* set the configuration -- STALL is an acceptable response here */
	if (us->pusb_dev->actconfig->desc.bConfigurationValue != 1) {
		FUNC3(us, "active config #%d != 1 ??\n",
			     us->pusb_dev->actconfig->desc.bConfigurationValue);
		return -EINVAL;
	}

	result = FUNC2(us->pusb_dev);
	FUNC3(us, "Result of usb_reset_configuration is %d\n", result);
	if (result == -EPIPE) {
		FUNC3(us, "-- stall on control interface\n");
	} else if (result != 0) {
		/* it's not a stall, but another error -- time to bail */
		FUNC3(us, "-- Unknown error.  Rejecting device\n");
		return -EINVAL;
	}

	us->extra = FUNC0(sizeof(struct sddr09_card_info), GFP_NOIO);
	if (!us->extra)
		return -ENOMEM;
	us->extra_destructor = sddr09_card_info_destructor;

	FUNC1();
	return 0;
}