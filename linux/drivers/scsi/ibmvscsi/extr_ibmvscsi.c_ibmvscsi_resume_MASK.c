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
struct ibmvscsi_host_data {int /*<<< orphan*/  srp_task; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ibmvscsi_host_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ibmvscsi_host_data *hostdata = FUNC0(dev);
	FUNC3(FUNC2(hostdata->dev));
	FUNC1(&hostdata->srp_task);

	return 0;
}