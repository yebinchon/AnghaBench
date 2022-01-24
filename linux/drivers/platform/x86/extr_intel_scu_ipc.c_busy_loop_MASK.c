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
typedef  int u32 ;
struct intel_scu_ipc_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct intel_scu_ipc_dev *scu)
{
	u32 status = FUNC2(scu);
	u32 loop_count = 100000;

	/* break if scu doesn't reset busy bit after huge retry */
	while ((status & FUNC0(0)) && --loop_count) {
		FUNC3(1); /* scu processing time is in few u secods */
		status = FUNC2(scu);
	}

	if (status & FUNC0(0)) {
		FUNC1(scu->dev, "IPC timed out");
		return -ETIMEDOUT;
	}

	if (status & FUNC0(1))
		return -EIO;

	return 0;
}