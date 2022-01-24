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
struct pvscsi_adapter {scalar_t__ workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_adapter*) ; 

__attribute__((used)) static void FUNC6(struct pvscsi_adapter *adapter)
{
	FUNC2(adapter);

	if (adapter->workqueue)
		FUNC0(adapter->workqueue);

	FUNC5(adapter);

	FUNC4(adapter);
	FUNC3(adapter);
	FUNC1(adapter);
}