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
struct work_struct {int dummy; } ;
struct sas_discovery_event {struct asd_sas_port* port; } ;
struct domain_device {int dev_type; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  disco_list_node; int /*<<< orphan*/  rphy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;
struct asd_sas_port {int /*<<< orphan*/  id; struct domain_device* port_dev; int /*<<< orphan*/  dev_list_lock; TYPE_1__ disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_DISCOVER_DOMAIN ; 
 int ENXIO ; 
#define  SAS_EDGE_EXPANDER_DEVICE 132 
#define  SAS_END_DEVICE 131 
#define  SAS_FANOUT_EXPANDER_DEVICE 130 
#define  SAS_SATA_DEV 129 
#define  SAS_SATA_PM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct domain_device*) ; 
 int FUNC6 (struct domain_device*) ; 
 int FUNC7 (struct domain_device*) ; 
 int FUNC8 (struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct asd_sas_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct sas_discovery_event* FUNC15 (struct work_struct*) ; 

__attribute__((used)) static void FUNC16(struct work_struct *work)
{
	struct domain_device *dev;
	int error = 0;
	struct sas_discovery_event *ev = FUNC15(work);
	struct asd_sas_port *port = ev->port;

	FUNC0(DISCE_DISCOVER_DOMAIN, &port->disc.pending);

	if (port->port_dev)
		return;

	error = FUNC8(port);
	if (error)
		return;
	dev = port->port_dev;

	FUNC2("DOING DISCOVERY on port %d, pid:%d\n", port->id,
		 FUNC14(current));

	switch (dev->dev_type) {
	case SAS_END_DEVICE:
		error = FUNC5(dev);
		break;
	case SAS_EDGE_EXPANDER_DEVICE:
	case SAS_FANOUT_EXPANDER_DEVICE:
		error = FUNC6(dev);
		break;
	case SAS_SATA_DEV:
	case SAS_SATA_PM:
#ifdef CONFIG_SCSI_SAS_ATA
		error = sas_discover_sata(dev);
		break;
#else
		FUNC4("ATA device seen but CONFIG_SCSI_SAS_ATA=N so cannot attach\n");
		/* Fall through */
#endif
		/* Fall through - only for the #else condition above. */
	default:
		error = -ENXIO;
		FUNC3("unhandled device %d\n", dev->dev_type);
		break;
	}

	if (error) {
		FUNC11(dev->rphy);
		FUNC1(&dev->disco_list_node);
		FUNC12(&port->dev_list_lock);
		FUNC1(&dev->dev_list_node);
		FUNC13(&port->dev_list_lock);

		FUNC10(dev);
		port->port_dev = NULL;
	}

	FUNC9(port);

	FUNC2("DONE DISCOVERY on port %d, pid:%d, result:%d\n", port->id,
		 FUNC14(current), error);
}