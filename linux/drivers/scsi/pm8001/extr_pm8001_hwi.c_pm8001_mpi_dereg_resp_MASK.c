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
typedef  scalar_t__ u32 ;
struct pm8001_hba_info {int dummy; } ;
struct dev_reg_resp {int /*<<< orphan*/  device_id; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

int FUNC3(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	u32 status;
	u32 device_id;
	struct dev_reg_resp *registerRespPayload =
		(struct dev_reg_resp *)(piomb + 4);

	status = FUNC1(registerRespPayload->status);
	device_id = FUNC1(registerRespPayload->device_id);
	if (status != 0)
		FUNC0(pm8001_ha,
			FUNC2(" deregister device failed ,status = %x"
			", device_id = %x\n", status, device_id));
	return 0;
}