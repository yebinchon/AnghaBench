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
struct intel_scu_ipc_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_complete; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC4(struct intel_scu_ipc_dev *scu)
{
	int status;

	if (!FUNC3(&scu->cmd_complete, 3 * HZ)) {
		FUNC1(scu->dev, "IPC timed out\n");
		return -ETIMEDOUT;
	}

	status = FUNC2(scu);
	if (status & FUNC0(1))
		return -EIO;

	return 0;
}