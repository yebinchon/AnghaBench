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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcmusb_func ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbg_ops ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ret = FUNC1(&tcmusb_func);
	if (ret)
		return ret;

	ret = FUNC0(&usbg_ops);
	if (ret)
		FUNC2(&tcmusb_func);

	return ret;
}