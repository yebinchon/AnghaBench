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
struct fsg_opts {int /*<<< orphan*/  common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fsg_opts* FUNC1 (struct usb_function_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_opts*) ; 

__attribute__((used)) static void FUNC3(struct usb_function_instance *fi)
{
	struct fsg_opts *opts;

	opts = FUNC1(fi);
	FUNC0(opts->common);
	FUNC2(opts);
}