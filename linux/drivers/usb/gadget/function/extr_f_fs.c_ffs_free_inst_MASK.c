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
struct f_fs_opts {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct f_fs_opts*) ; 
 struct f_fs_opts* FUNC4 (struct usb_function_instance*) ; 

__attribute__((used)) static void FUNC5(struct usb_function_instance *f)
{
	struct f_fs_opts *opts;

	opts = FUNC4(f);
	FUNC1();
	FUNC0(opts->dev);
	FUNC2();
	FUNC3(opts);
}