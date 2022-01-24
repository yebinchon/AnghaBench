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
struct usb_function_instance {int dummy; } ;
struct usb_function {int /*<<< orphan*/  free_func; int /*<<< orphan*/  disable; int /*<<< orphan*/  set_alt; int /*<<< orphan*/  setup; int /*<<< orphan*/  unbind; int /*<<< orphan*/  bind; int /*<<< orphan*/  name; } ;
struct fsg_opts {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; struct fsg_common* common; } ;
struct fsg_dev {struct usb_function function; struct fsg_common* common; } ;
struct fsg_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSG_DRIVER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fsg_bind ; 
 int /*<<< orphan*/  fsg_disable ; 
 int /*<<< orphan*/  fsg_free ; 
 struct fsg_opts* FUNC1 (struct usb_function_instance*) ; 
 int /*<<< orphan*/  fsg_set_alt ; 
 int /*<<< orphan*/  fsg_setup ; 
 int /*<<< orphan*/  fsg_unbind ; 
 struct fsg_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct usb_function *FUNC6(struct usb_function_instance *fi)
{
	struct fsg_opts *opts = FUNC1(fi);
	struct fsg_common *common = opts->common;
	struct fsg_dev *fsg;

	fsg = FUNC2(sizeof(*fsg), GFP_KERNEL);
	if (FUNC5(!fsg))
		return FUNC0(-ENOMEM);

	FUNC3(&opts->lock);
	opts->refcnt++;
	FUNC4(&opts->lock);

	fsg->function.name	= FSG_DRIVER_DESC;
	fsg->function.bind	= fsg_bind;
	fsg->function.unbind	= fsg_unbind;
	fsg->function.setup	= fsg_setup;
	fsg->function.set_alt	= fsg_set_alt;
	fsg->function.disable	= fsg_disable;
	fsg->function.free_func	= fsg_free;

	fsg->common               = common;

	return &fsg->function;
}