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
struct hpsa_sas_port {int dummy; } ;
struct hpsa_sas_phy {int dummy; } ;
struct hpsa_sas_node {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {struct hpsa_sas_node* sas_host; int /*<<< orphan*/  sas_address; TYPE_1__* scsi_host; } ;
struct TYPE_2__ {struct device shost_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct hpsa_sas_node* FUNC0 (struct device*) ; 
 struct hpsa_sas_phy* FUNC1 (struct hpsa_sas_port*) ; 
 struct hpsa_sas_port* FUNC2 (struct hpsa_sas_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsa_sas_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsa_sas_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsa_sas_port*) ; 
 int FUNC6 (struct hpsa_sas_phy*) ; 

__attribute__((used)) static int FUNC7(struct ctlr_info *h)
{
	int rc;
	struct device *parent_dev;
	struct hpsa_sas_node *hpsa_sas_node;
	struct hpsa_sas_port *hpsa_sas_port;
	struct hpsa_sas_phy *hpsa_sas_phy;

	parent_dev = &h->scsi_host->shost_dev;

	hpsa_sas_node = FUNC0(parent_dev);
	if (!hpsa_sas_node)
		return -ENOMEM;

	hpsa_sas_port = FUNC2(hpsa_sas_node, h->sas_address);
	if (!hpsa_sas_port) {
		rc = -ENODEV;
		goto free_sas_node;
	}

	hpsa_sas_phy = FUNC1(hpsa_sas_port);
	if (!hpsa_sas_phy) {
		rc = -ENODEV;
		goto free_sas_port;
	}

	rc = FUNC6(hpsa_sas_phy);
	if (rc)
		goto free_sas_phy;

	h->sas_host = hpsa_sas_node;

	return 0;

free_sas_phy:
	FUNC4(hpsa_sas_phy);
free_sas_port:
	FUNC5(hpsa_sas_port);
free_sas_node:
	FUNC3(hpsa_sas_node);

	return rc;
}