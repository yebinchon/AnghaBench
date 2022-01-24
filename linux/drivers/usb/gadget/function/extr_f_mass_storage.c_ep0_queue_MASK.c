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
struct fsg_common {TYPE_1__* ep0; int /*<<< orphan*/  ep0req; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct fsg_common* driver_data; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_common*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fsg_common *common)
{
	int	rc;

	rc = FUNC1(common->ep0, common->ep0req, GFP_ATOMIC);
	common->ep0->driver_data = common;
	if (rc != 0 && rc != -ESHUTDOWN) {
		/* We can't do much more than wait for a reset */
		FUNC0(common, "error in submission: %s --> %d\n",
			common->ep0->name, rc);
	}
	return rc;
}