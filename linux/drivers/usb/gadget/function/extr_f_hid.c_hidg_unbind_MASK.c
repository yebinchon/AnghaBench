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
struct f_hidg {int /*<<< orphan*/  cdev; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f_hidg* FUNC3 (struct usb_function*) ; 
 int /*<<< orphan*/  hidg_class ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*) ; 

__attribute__((used)) static void FUNC5(struct usb_configuration *c, struct usb_function *f)
{
	struct f_hidg *hidg = FUNC3(f);

	FUNC2(hidg_class, FUNC0(major, hidg->minor));
	FUNC1(&hidg->cdev);

	FUNC4(f);
}