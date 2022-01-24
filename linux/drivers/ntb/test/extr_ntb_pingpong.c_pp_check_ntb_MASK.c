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
typedef  int u64 ;
struct ntb_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct ntb_dev*) ; 
 int FUNC4 (struct ntb_dev*) ; 
 int FUNC5 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_dev*) ; 
 int FUNC7 (struct ntb_dev*) ; 
 scalar_t__ FUNC8 (struct ntb_dev*) ; 
 int /*<<< orphan*/  unsafe ; 

__attribute__((used)) static int FUNC9(struct ntb_dev *ntb)
{
	u64 pmask;

	if (FUNC3(ntb)) {
		FUNC1(&ntb->dev, "Doorbell is unsafe\n");
		if (!unsafe)
			return -EINVAL;
	}

	if (FUNC8(ntb)) {
		FUNC1(&ntb->dev, "Scratchpad is unsafe\n");
		if (!unsafe)
			return -EINVAL;
	}

	pmask = FUNC0(FUNC6(ntb), 0);
	if ((FUNC4(ntb) & pmask) != pmask) {
		FUNC2(&ntb->dev, "Unsupported DB configuration\n");
		return -EINVAL;
	}

	if (FUNC7(ntb) < 1 && FUNC5(ntb) < 1) {
		FUNC2(&ntb->dev, "Scratchpads and messages unsupported\n");
		return -EINVAL;
	} else if (FUNC7(ntb) < 1) {
		FUNC1(&ntb->dev, "Scratchpads unsupported\n");
	} else if (FUNC5(ntb) < 1) {
		FUNC1(&ntb->dev, "Messages unsupported\n");
	}

	return 0;
}