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
struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct fsg_dev {int /*<<< orphan*/  function; struct fsg_common* common; } ;
struct fsg_common {struct fsg_dev* fsg; int /*<<< orphan*/  fsg_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int /*<<< orphan*/  FSG_STATE_CONFIG_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fsg_dev* FUNC2 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct usb_configuration *c, struct usb_function *f)
{
	struct fsg_dev		*fsg = FUNC2(f);
	struct fsg_common	*common = fsg->common;

	FUNC0(fsg, "unbind\n");
	if (fsg->common->fsg == fsg) {
		FUNC1(fsg->common, FSG_STATE_CONFIG_CHANGE, NULL);
		/* FIXME: make interruptible or killable somehow? */
		FUNC4(common->fsg_wait, common->fsg != fsg);
	}

	FUNC3(&fsg->function);
}