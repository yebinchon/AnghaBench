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
struct pm860x_charger_info {int online; int allowed; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_INIT ; 
 int /*<<< orphan*/  PM8607_STATUS_2 ; 
 int STATUS2_CHG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm860x_charger_info*) ; 

__attribute__((used)) static int FUNC4(struct pm860x_charger_info *info)
{
	int ret;

	ret = FUNC2(info->i2c, PM8607_STATUS_2);
	if (ret < 0)
		return ret;

	FUNC0(&info->lock);
	info->state = FSM_INIT;
	if (ret & STATUS2_CHG) {
		info->online = 1;
		info->allowed = 1;
	} else {
		info->online = 0;
		info->allowed = 0;
	}
	FUNC1(&info->lock);

	FUNC3(info);
	return 0;
}