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
struct zfcp_scsi_dev {int /*<<< orphan*/  status; } ;
struct zfcp_port {int /*<<< orphan*/  status; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;
typedef  enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_LUN 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 129 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 128 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_ERP_INUSE ; 
 int ZFCP_STATUS_COMMON_NOESC ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_COMMON_UNBLOCKED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct zfcp_scsi_dev* FUNC1 (struct scsi_device*) ; 

__attribute__((used)) static enum zfcp_erp_act_type FUNC2(enum zfcp_erp_act_type want,
				 struct zfcp_adapter *adapter,
				 struct zfcp_port *port,
				 struct scsi_device *sdev)
{
	enum zfcp_erp_act_type need = want;
	int l_status, p_status, a_status;
	struct zfcp_scsi_dev *zfcp_sdev;

	switch (want) {
	case ZFCP_ERP_ACTION_REOPEN_LUN:
		zfcp_sdev = FUNC1(sdev);
		l_status = FUNC0(&zfcp_sdev->status);
		if (l_status & ZFCP_STATUS_COMMON_ERP_INUSE)
			return 0;
		p_status = FUNC0(&port->status);
		if (!(p_status & ZFCP_STATUS_COMMON_RUNNING) ||
		      p_status & ZFCP_STATUS_COMMON_ERP_FAILED)
			return 0;
		if (!(p_status & ZFCP_STATUS_COMMON_UNBLOCKED))
			need = ZFCP_ERP_ACTION_REOPEN_PORT;
		/* fall through */
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		p_status = FUNC0(&port->status);
		if (!(p_status & ZFCP_STATUS_COMMON_OPEN))
			need = ZFCP_ERP_ACTION_REOPEN_PORT;
		/* fall through */
	case ZFCP_ERP_ACTION_REOPEN_PORT:
		p_status = FUNC0(&port->status);
		if (p_status & ZFCP_STATUS_COMMON_ERP_INUSE)
			return 0;
		a_status = FUNC0(&adapter->status);
		if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) ||
		      a_status & ZFCP_STATUS_COMMON_ERP_FAILED)
			return 0;
		if (p_status & ZFCP_STATUS_COMMON_NOESC)
			return need;
		if (!(a_status & ZFCP_STATUS_COMMON_UNBLOCKED))
			need = ZFCP_ERP_ACTION_REOPEN_ADAPTER;
		/* fall through */
	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		a_status = FUNC0(&adapter->status);
		if (a_status & ZFCP_STATUS_COMMON_ERP_INUSE)
			return 0;
		if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) &&
		    !(a_status & ZFCP_STATUS_COMMON_OPEN))
			return 0; /* shutdown requested for closed adapter */
	}

	return need;
}