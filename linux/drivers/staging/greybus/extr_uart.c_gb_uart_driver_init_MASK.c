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
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  uart_driver ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ret = FUNC2();
	if (ret)
		return ret;

	ret = FUNC0(&uart_driver);
	if (ret) {
		FUNC1();
		return ret;
	}

	return 0;
}