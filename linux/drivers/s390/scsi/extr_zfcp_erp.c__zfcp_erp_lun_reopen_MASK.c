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
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_ERP_ACTION_REOPEN_LUN ; 
 struct zfcp_scsi_dev* FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct zfcp_adapter*,TYPE_1__*,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct scsi_device *sdev, int clear,
				 char *dbftag, u32 act_status)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC0(sdev);
	struct zfcp_adapter *adapter = zfcp_sdev->port->adapter;

	FUNC2(sdev, clear);

	FUNC1(ZFCP_ERP_ACTION_REOPEN_LUN, adapter,
				zfcp_sdev->port, sdev, dbftag, act_status);
}