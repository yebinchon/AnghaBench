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
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int SCSI_ADAPTER_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,struct zfcp_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,char*) ; 

__attribute__((used)) static int FUNC2(struct Scsi_Host *shost, int reset_type)
{
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *)shost->hostdata[0];
	int ret = 0;

	if (reset_type != SCSI_ADAPTER_RESET) {
		ret = -EOPNOTSUPP;
		FUNC0("scshr_n", adapter, ~0, ret);
		return ret;
	}

	FUNC1(adapter, "scshr_y");
	return ret;
}