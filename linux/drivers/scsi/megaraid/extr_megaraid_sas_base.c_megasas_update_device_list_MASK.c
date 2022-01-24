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
struct megasas_instance {scalar_t__ requestorId; scalar_t__ enable_fw_dev_list; } ;

/* Variables and functions */
 int DCMD_SUCCESS ; 
 int /*<<< orphan*/  MR_LD_QUERY_TYPE_EXPOSED_TO_HOST ; 
 int SCAN_PD_CHANNEL ; 
 int SCAN_VD_CHANNEL ; 
 scalar_t__ FUNC0 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct megasas_instance*) ; 
 int FUNC2 (struct megasas_instance*,int) ; 
 int FUNC3 (struct megasas_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC4(struct megasas_instance *instance,
			       int event_type)
{
	int dcmd_ret = DCMD_SUCCESS;

	if (instance->enable_fw_dev_list) {
		dcmd_ret = FUNC2(instance, false);
		if (dcmd_ret != DCMD_SUCCESS)
			goto out;
	} else {
		if (event_type & SCAN_PD_CHANNEL) {
			dcmd_ret = FUNC1(instance);

			if (dcmd_ret != DCMD_SUCCESS)
				goto out;
		}

		if (event_type & SCAN_VD_CHANNEL) {
			if (!instance->requestorId ||
			    (instance->requestorId &&
			     FUNC0(instance, 0))) {
				dcmd_ret = FUNC3(instance,
						MR_LD_QUERY_TYPE_EXPOSED_TO_HOST);
				if (dcmd_ret != DCMD_SUCCESS)
					goto out;
			}
		}
	}

out:
	return dcmd_ret;
}