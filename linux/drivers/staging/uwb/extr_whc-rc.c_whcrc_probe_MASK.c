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
struct whcrc {struct uwb_rc* uwb_rc; struct umc_dev* umc_dev; } ;
struct uwb_rc {int /*<<< orphan*/  stop; int /*<<< orphan*/  start; int /*<<< orphan*/  reset; int /*<<< orphan*/  cmd; int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;
struct umc_dev {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct whcrc*) ; 
 struct whcrc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct umc_dev*,struct whcrc*) ; 
 int FUNC4 (struct uwb_rc*,struct device*,struct whcrc*) ; 
 struct uwb_rc* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*) ; 
 int /*<<< orphan*/  whcrc_cmd ; 
 int /*<<< orphan*/  FUNC7 (struct whcrc*) ; 
 int /*<<< orphan*/  FUNC8 (struct whcrc*) ; 
 int /*<<< orphan*/  whcrc_reset ; 
 int FUNC9 (struct whcrc*) ; 
 int /*<<< orphan*/  whcrc_start_rc ; 
 int /*<<< orphan*/  whcrc_stop_rc ; 

__attribute__((used)) static
int FUNC10(struct umc_dev *umc_dev)
{
	int result;
	struct uwb_rc *uwb_rc;
	struct whcrc *whcrc;
	struct device *dev = &umc_dev->dev;

	result = -ENOMEM;
	uwb_rc = FUNC5();
	if (uwb_rc == NULL) {
		FUNC0(dev, "unable to allocate RC instance\n");
		goto error_rc_alloc;
	}
	whcrc = FUNC2(sizeof(*whcrc), GFP_KERNEL);
	if (whcrc == NULL) {
		FUNC0(dev, "unable to allocate WHC-RC instance\n");
		goto error_alloc;
	}
	FUNC7(whcrc);
	whcrc->umc_dev = umc_dev;

	result = FUNC9(whcrc);
	if (result < 0) {
		FUNC0(dev, "Can't setup RC UMC interface: %d\n", result);
		goto error_setup_rc_umc;
	}
	whcrc->uwb_rc = uwb_rc;

	uwb_rc->owner = THIS_MODULE;
	uwb_rc->cmd   = whcrc_cmd;
	uwb_rc->reset = whcrc_reset;
	uwb_rc->start = whcrc_start_rc;
	uwb_rc->stop  = whcrc_stop_rc;

	result = FUNC4(uwb_rc, dev, whcrc);
	if (result < 0)
		goto error_rc_add;
	FUNC3(umc_dev, whcrc);
	return 0;

error_rc_add:
	FUNC8(whcrc);
error_setup_rc_umc:
	FUNC1(whcrc);
error_alloc:
	FUNC6(uwb_rc);
error_rc_alloc:
	return result;
}