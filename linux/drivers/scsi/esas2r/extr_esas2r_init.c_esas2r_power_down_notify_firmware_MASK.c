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
struct esas2r_adapter {int dummy; } ;

/* Variables and functions */
 int DRBL_POWER_DOWN ; 
 int /*<<< orphan*/  MU_DOORBELL_IN ; 
 int /*<<< orphan*/  MU_DOORBELL_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct esas2r_adapter *a)
{
	u32 starttime;
	u32 doorbell;

	FUNC2(a, MU_DOORBELL_IN, DRBL_POWER_DOWN);
	starttime = FUNC3(jiffies);

	while (true) {
		doorbell = FUNC1(a, MU_DOORBELL_OUT);
		if (doorbell & DRBL_POWER_DOWN) {
			FUNC2(a, MU_DOORBELL_OUT,
						    doorbell);
			break;
		}

		FUNC5(FUNC4(100));

		if ((FUNC3(jiffies) - starttime) > 30000) {
			FUNC0("Timeout waiting for power down");
			break;
		}
	}
}