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
struct zfcp_port {int /*<<< orphan*/  d_id; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  status; } ;
struct zfcp_dbf_rec {int /*<<< orphan*/  lun; void* lun_status; int /*<<< orphan*/  d_id; int /*<<< orphan*/  wwpn; void* port_status; void* adapter_status; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_INVALID_LUN ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_dbf_rec *rec,
				struct zfcp_adapter *adapter,
				struct zfcp_port *port,
				struct scsi_device *sdev)
{
	rec->adapter_status = FUNC0(&adapter->status);
	if (port) {
		rec->port_status = FUNC0(&port->status);
		rec->wwpn = port->wwpn;
		rec->d_id = port->d_id;
	}
	if (sdev) {
		rec->lun_status = FUNC0(&FUNC1(sdev)->status);
		rec->lun = FUNC2(sdev);
	} else
		rec->lun = ZFCP_DBF_INVALID_LUN;
}