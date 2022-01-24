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
typedef  int /*<<< orphan*/  u64 ;
struct sas_port {int dummy; } ;
struct hpsa_sas_port {int /*<<< orphan*/  port_list_entry; int /*<<< orphan*/  sas_address; struct sas_port* port; struct hpsa_sas_node* parent_node; int /*<<< orphan*/  phy_list_head; } ;
struct hpsa_sas_node {int /*<<< orphan*/  port_list_head; int /*<<< orphan*/  parent_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsa_sas_port*) ; 
 struct hpsa_sas_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sas_port*) ; 
 struct sas_port* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sas_port*) ; 

__attribute__((used)) static struct hpsa_sas_port
	*FUNC7(struct hpsa_sas_node *hpsa_sas_node,
				u64 sas_address)
{
	int rc;
	struct hpsa_sas_port *hpsa_sas_port;
	struct sas_port *port;

	hpsa_sas_port = FUNC2(sizeof(*hpsa_sas_port), GFP_KERNEL);
	if (!hpsa_sas_port)
		return NULL;

	FUNC0(&hpsa_sas_port->phy_list_head);
	hpsa_sas_port->parent_node = hpsa_sas_node;

	port = FUNC5(hpsa_sas_node->parent_dev);
	if (!port)
		goto free_hpsa_port;

	rc = FUNC4(port);
	if (rc)
		goto free_sas_port;

	hpsa_sas_port->port = port;
	hpsa_sas_port->sas_address = sas_address;
	FUNC3(&hpsa_sas_port->port_list_entry,
			&hpsa_sas_node->port_list_head);

	return hpsa_sas_port;

free_sas_port:
	FUNC6(port);
free_hpsa_port:
	FUNC1(hpsa_sas_port);

	return NULL;
}