#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct zfcp_unit {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int min; } ;
struct TYPE_24__ {int min; } ;
struct TYPE_14__ {TYPE_10__ fabric; TYPE_9__ channel; } ;
struct TYPE_22__ {int min; } ;
struct TYPE_21__ {int min; } ;
struct TYPE_23__ {TYPE_7__ fabric; TYPE_6__ channel; } ;
struct TYPE_19__ {int min; } ;
struct TYPE_18__ {int min; } ;
struct TYPE_20__ {TYPE_4__ fabric; TYPE_3__ channel; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; TYPE_11__ cmd; TYPE_8__ read; TYPE_5__ write; } ;
struct TYPE_17__ {struct zfcp_port* port; struct scsi_device* sdev; struct zfcp_adapter* adapter; } ;
struct zfcp_scsi_dev {TYPE_12__ latencies; struct zfcp_port* port; TYPE_2__ erp_action; } ;
struct zfcp_port {int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;
struct zfcp_adapter {int connection_features; } ;
struct scsi_device {TYPE_1__* host; } ;
struct fc_rport {int /*<<< orphan*/  port_name; } ;
struct TYPE_16__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int ENXIO ; 
 int FSF_FEATURE_NPIV_MODE ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 scalar_t__ allow_lun_scan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 struct zfcp_scsi_dev* FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fc_rport* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct zfcp_port* FUNC10 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_device*) ; 
 scalar_t__ FUNC12 (struct zfcp_port*) ; 
 int /*<<< orphan*/  zfcp_sysfs_port_units_mutex ; 
 struct zfcp_unit* FUNC13 (struct zfcp_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct scsi_device *sdev)
{
	struct fc_rport *rport = FUNC6(FUNC3(sdev));
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *) sdev->host->hostdata[0];
	struct zfcp_scsi_dev *zfcp_sdev = FUNC4(sdev);
	struct zfcp_port *port;
	struct zfcp_unit *unit;
	int npiv = adapter->connection_features & FSF_FEATURE_NPIV_MODE;

	zfcp_sdev->erp_action.adapter = adapter;
	zfcp_sdev->erp_action.sdev = sdev;

	port = FUNC10(adapter, rport->port_name);
	if (!port)
		return -ENXIO;

	zfcp_sdev->erp_action.port = port;

	FUNC0(&zfcp_sysfs_port_units_mutex);
	if (FUNC12(port)) {
		/* port is already gone */
		FUNC1(&zfcp_sysfs_port_units_mutex);
		FUNC2(&port->dev); /* undo zfcp_get_port_by_wwpn() */
		return -ENXIO;
	}
	FUNC1(&zfcp_sysfs_port_units_mutex);

	unit = FUNC13(port, FUNC11(sdev));
	if (unit)
		FUNC2(&unit->dev);

	if (!unit && !(allow_lun_scan && npiv)) {
		FUNC2(&port->dev);
		return -ENXIO;
	}

	zfcp_sdev->port = port;
	zfcp_sdev->latencies.write.channel.min = 0xFFFFFFFF;
	zfcp_sdev->latencies.write.fabric.min = 0xFFFFFFFF;
	zfcp_sdev->latencies.read.channel.min = 0xFFFFFFFF;
	zfcp_sdev->latencies.read.fabric.min = 0xFFFFFFFF;
	zfcp_sdev->latencies.cmd.channel.min = 0xFFFFFFFF;
	zfcp_sdev->latencies.cmd.fabric.min = 0xFFFFFFFF;
	FUNC5(&zfcp_sdev->latencies.lock);

	FUNC8(sdev, ZFCP_STATUS_COMMON_RUNNING);
	FUNC7(sdev, 0, "scsla_1");
	FUNC9(port->adapter);

	return 0;
}