#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct zfcp_adapter {int connection_features; } ;
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 int FSF_FEATURE_NPIV_MODE ; 
 int SUCCESS ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 struct zfcp_scsi_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct zfcp_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *scpnt)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(scpnt->device);
	struct zfcp_adapter *adapter = zfcp_sdev->port->adapter;
	int ret = SUCCESS, fc_ret;

	if (!(adapter->connection_features & FSF_FEATURE_NPIV_MODE)) {
		FUNC4(adapter, 0, "schrh_p");
		FUNC5(adapter);
	}
	FUNC3(adapter, 0, "schrh_1");
	FUNC5(adapter);
	fc_ret = FUNC0(scpnt);
	if (fc_ret)
		ret = fc_ret;

	FUNC2("schrh_r", adapter, ~0, ret);
	return ret;
}