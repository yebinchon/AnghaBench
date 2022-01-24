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
struct zfcp_adapter {int dummy; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 struct zfcp_adapter* FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC5(struct ccw_device *cdev)
{
	struct zfcp_adapter *adapter = FUNC0(cdev);

	if (!adapter)
		return;

	FUNC2(adapter, 0, "ccshut1");
	FUNC4(adapter);
	FUNC3(adapter);

	FUNC1(adapter);
}