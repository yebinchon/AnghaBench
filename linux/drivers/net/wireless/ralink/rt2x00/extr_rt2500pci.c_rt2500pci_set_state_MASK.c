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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PWRCSR1 ; 
 int /*<<< orphan*/  PWRCSR1_BBP_CURR_STATE ; 
 int /*<<< orphan*/  PWRCSR1_BBP_DESIRE_STATE ; 
 int /*<<< orphan*/  PWRCSR1_PUT_TO_SLEEP ; 
 int /*<<< orphan*/  PWRCSR1_RF_CURR_STATE ; 
 int /*<<< orphan*/  PWRCSR1_RF_DESIRE_STATE ; 
 int /*<<< orphan*/  PWRCSR1_SET_STATE ; 
 unsigned int REGISTER_BUSY_COUNT ; 
 int STATE_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev,
			       enum dev_state state)
{
	u32 reg, reg2;
	unsigned int i;
	char put_to_sleep;
	char bbp_state;
	char rf_state;

	put_to_sleep = (state != STATE_AWAKE);

	reg = FUNC3(rt2x00dev, PWRCSR1);
	FUNC2(&reg, PWRCSR1_SET_STATE, 1);
	FUNC2(&reg, PWRCSR1_BBP_DESIRE_STATE, state);
	FUNC2(&reg, PWRCSR1_RF_DESIRE_STATE, state);
	FUNC2(&reg, PWRCSR1_PUT_TO_SLEEP, put_to_sleep);
	FUNC4(rt2x00dev, PWRCSR1, reg);

	/*
	 * Device is not guaranteed to be in the requested state yet.
	 * We must wait until the register indicates that the
	 * device has entered the correct state.
	 */
	for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
		reg2 = FUNC3(rt2x00dev, PWRCSR1);
		bbp_state = FUNC1(reg2, PWRCSR1_BBP_CURR_STATE);
		rf_state = FUNC1(reg2, PWRCSR1_RF_CURR_STATE);
		if (bbp_state == state && rf_state == state)
			return 0;
		FUNC4(rt2x00dev, PWRCSR1, reg);
		FUNC0(10);
	}

	return -EBUSY;
}