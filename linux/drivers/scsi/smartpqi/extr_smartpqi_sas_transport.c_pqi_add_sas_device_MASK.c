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
struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {struct pqi_sas_port* sas_port; int /*<<< orphan*/  sas_address; } ;
struct pqi_sas_port {struct sas_rphy* rphy; } ;
struct pqi_sas_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct pqi_sas_port* FUNC0 (struct pqi_sas_node*,int /*<<< orphan*/ ,struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_sas_port*) ; 
 int FUNC2 (struct pqi_sas_port*,struct sas_rphy*) ; 
 struct sas_rphy* FUNC3 (struct pqi_sas_port*) ; 

int FUNC4(struct pqi_sas_node *pqi_sas_node,
	struct pqi_scsi_dev *device)
{
	int rc;
	struct pqi_sas_port *pqi_sas_port;
	struct sas_rphy *rphy;

	pqi_sas_port = FUNC0(pqi_sas_node,
		device->sas_address, device);
	if (!pqi_sas_port)
		return -ENOMEM;

	rphy = FUNC3(pqi_sas_port);
	if (!rphy) {
		rc = -ENODEV;
		goto free_sas_port;
	}

	pqi_sas_port->rphy = rphy;
	device->sas_port = pqi_sas_port;

	rc = FUNC2(pqi_sas_port, rphy);
	if (rc)
		goto free_sas_port;

	return 0;

free_sas_port:
	FUNC1(pqi_sas_port);
	device->sas_port = NULL;

	return rc;
}