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
struct vc_data {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int MIN_NR_CONSOLES ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vc_data* FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int vc_num)
{
	struct vc_data *vc = NULL;
	int ret = 0;

	FUNC1();
	if (FUNC0(vc_num))
		ret = -EBUSY;
	else if (vc_num)
		vc = FUNC5(vc_num);
	FUNC2();

	if (vc && vc_num >= MIN_NR_CONSOLES) {
		FUNC4(&vc->port);
		FUNC3(vc);
	}

	return ret;
}