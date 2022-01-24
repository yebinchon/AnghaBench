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
struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long DEBOUNCE ; 
 unsigned long DEBOUNCE_VAL_SHIFT ; 
 unsigned long DEGLITCH ; 
 unsigned long DIS_SCHMIT ; 
 int /*<<< orphan*/  DRIVE_STRENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVE_STRENGTH_HI ; 
 int /*<<< orphan*/  DRIVE_STRENGTH_LOW ; 
 int /*<<< orphan*/  DRIVE_STRENGTH_MED ; 
 int /*<<< orphan*/  HI ; 
 int /*<<< orphan*/  LOW ; 
 int /*<<< orphan*/  MED ; 
 unsigned long MULTI_DRIVE ; 
 unsigned long PULL_DOWN ; 
 unsigned long PULL_UP ; 
 unsigned long SLEWRATE ; 
 int /*<<< orphan*/  FUNC3 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct pinctrl_dev *pctldev,
				   struct seq_file *s, unsigned pin_id)
{
	unsigned long config;
	int val, num_conf = 0;

	FUNC3(pctldev, pin_id, &config);

	FUNC0(MULTI_DRIVE);
	FUNC0(PULL_UP);
	FUNC0(PULL_DOWN);
	FUNC0(DIS_SCHMIT);
	FUNC0(DEGLITCH);
	FUNC1(DRIVE_STRENGTH, FUNC2(LOW),
			     DRIVE_STRENGTH_LOW);
	FUNC1(DRIVE_STRENGTH, FUNC2(MED),
			     DRIVE_STRENGTH_MED);
	FUNC1(DRIVE_STRENGTH, FUNC2(HI),
			     DRIVE_STRENGTH_HI);
	FUNC0(SLEWRATE);
	FUNC0(DEBOUNCE);
	if (config & DEBOUNCE) {
		val = config >> DEBOUNCE_VAL_SHIFT;
		FUNC4(s, "(%d)", val);
	}

	return;
}