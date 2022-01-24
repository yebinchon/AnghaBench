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
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  aqm; int /*<<< orphan*/  apm; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int AP_DRIVER_FLAG_DEFAULT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBF_DEBUG ; 
 TYPE_3__ ap_perms ; 
 int /*<<< orphan*/  ap_perms_mutex ; 
 int FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, void *dummy)
{
	int rc, card, queue, devres, drvres;

	if (FUNC4(dev)) {
		card = FUNC1(FUNC9(dev)->qid);
		queue = FUNC2(FUNC9(dev)->qid);
		FUNC5(&ap_perms_mutex);
		devres = FUNC7(card, ap_perms.apm)
			&& FUNC7(queue, ap_perms.aqm);
		FUNC6(&ap_perms_mutex);
		drvres = FUNC8(dev->driver)->flags
			& AP_DRIVER_FLAG_DEFAULT;
		if (!!devres != !!drvres) {
			FUNC0(DBF_DEBUG, "reprobing queue=%02x.%04x\n",
			       card, queue);
			rc = FUNC3(dev);
		}
	}

	return 0;
}