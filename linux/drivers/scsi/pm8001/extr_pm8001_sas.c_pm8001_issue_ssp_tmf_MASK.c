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
typedef  int /*<<< orphan*/  u8 ;
struct sas_ssp_task {int /*<<< orphan*/  LUN; } ;
struct pm8001_tmf_task {int dummy; } ;
struct domain_device {int tproto; } ;
typedef  int /*<<< orphan*/  ssp_task ;

/* Variables and functions */
 int SAS_PROTOCOL_SSP ; 
 int TMF_RESP_FUNC_ESUPP ; 
 int FUNC0 (struct domain_device*,struct sas_ssp_task*,int,struct pm8001_tmf_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct domain_device *dev,
	u8 *lun, struct pm8001_tmf_task *tmf)
{
	struct sas_ssp_task ssp_task;
	if (!(dev->tproto & SAS_PROTOCOL_SSP))
		return TMF_RESP_FUNC_ESUPP;

	FUNC1((u8 *)&ssp_task.LUN, lun, 8);
	return FUNC0(dev, &ssp_task, sizeof(ssp_task),
		tmf);
}