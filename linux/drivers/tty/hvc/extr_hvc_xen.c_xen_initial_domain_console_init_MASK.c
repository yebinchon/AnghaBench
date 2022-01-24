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
struct xencons_info {int /*<<< orphan*/  list; int /*<<< orphan*/  vtermno; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HVC_COOKIE ; 
 int /*<<< orphan*/  VIRQ_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct xencons_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct xencons_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xencons_lock ; 
 int /*<<< orphan*/  xenconsoles ; 

__attribute__((used)) static int FUNC7(void)
{
	struct xencons_info *info;

	if (!FUNC6())
		return -ENODEV;

	info = FUNC5(HVC_COOKIE);
	if (!info) {
		info = FUNC1(sizeof(struct xencons_info), GFP_KERNEL);
		if (!info)
			return -ENOMEM;
	}

	info->irq = FUNC0(VIRQ_CONSOLE, 0, false);
	info->vtermno = HVC_COOKIE;

	FUNC3(&xencons_lock);
	FUNC2(&info->list, &xenconsoles);
	FUNC4(&xencons_lock);

	return 0;
}