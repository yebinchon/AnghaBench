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
struct zfcp_scsi_dev {struct zfcp_port* port; } ;
struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  ZFCP_STATUS_ERP_NO_REF ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int,char*,int /*<<< orphan*/ ) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

void FUNC5(struct scsi_device *sdev, char *dbftag)
{
	unsigned long flags;
	struct zfcp_scsi_dev *zfcp_sdev = FUNC1(sdev);
	struct zfcp_port *port = zfcp_sdev->port;
	struct zfcp_adapter *adapter = port->adapter;
	int clear = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;

	FUNC2(&adapter->erp_lock, flags);
	FUNC0(sdev, clear, dbftag, ZFCP_STATUS_ERP_NO_REF);
	FUNC3(&adapter->erp_lock, flags);

	FUNC4(adapter);
}