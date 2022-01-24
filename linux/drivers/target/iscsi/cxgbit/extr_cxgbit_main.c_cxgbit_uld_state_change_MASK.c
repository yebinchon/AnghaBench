#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct cxgbit_device {TYPE_1__ lldi; int /*<<< orphan*/  flags; } ;
typedef  enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;

/* Variables and functions */
 int /*<<< orphan*/  CDEV_STATE_UP ; 
#define  CXGB4_STATE_DETACH 131 
#define  CXGB4_STATE_DOWN 130 
#define  CXGB4_STATE_START_RECOVERY 129 
#define  CXGB4_STATE_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbit_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbit_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *handle, enum cxgb4_state state)
{
	struct cxgbit_device *cdev = handle;

	switch (state) {
	case CXGB4_STATE_UP:
		FUNC5(CDEV_STATE_UP, &cdev->flags);
		FUNC4("cdev %s state UP.\n", FUNC3(cdev->lldi.pdev));
		break;
	case CXGB4_STATE_START_RECOVERY:
		FUNC0(CDEV_STATE_UP, &cdev->flags);
		FUNC1(cdev);
		FUNC4("cdev %s state RECOVERY.\n", FUNC3(cdev->lldi.pdev));
		break;
	case CXGB4_STATE_DOWN:
		FUNC4("cdev %s state DOWN.\n", FUNC3(cdev->lldi.pdev));
		break;
	case CXGB4_STATE_DETACH:
		FUNC0(CDEV_STATE_UP, &cdev->flags);
		FUNC4("cdev %s state DETACH.\n", FUNC3(cdev->lldi.pdev));
		FUNC2(cdev);
		break;
	default:
		FUNC4("cdev %s unknown state %d.\n",
			FUNC3(cdev->lldi.pdev), state);
		break;
	}
	return 0;
}