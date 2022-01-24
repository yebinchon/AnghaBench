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
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct csio_hw *hw, int card_fw_usable,
				int k, int c)
{
	const char *reason;

	if (!card_fw_usable) {
		reason = "incompatible or unusable";
		goto install;
	}

	if (k > c) {
		reason = "older than the version supported with this driver";
		goto install;
	}

	return 0;

install:
	FUNC4(hw, "firmware on card (%u.%u.%u.%u) is %s, "
		"installing firmware %u.%u.%u.%u on card.\n",
		FUNC1(c), FUNC3(c),
		FUNC2(c), FUNC0(c), reason,
		FUNC1(k), FUNC3(k),
		FUNC2(k), FUNC0(k));

	return 1;
}