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
struct hpsa_sas_node {int /*<<< orphan*/  port_list_head; struct device* parent_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hpsa_sas_node* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hpsa_sas_node *FUNC2(struct device *parent_dev)
{
	struct hpsa_sas_node *hpsa_sas_node;

	hpsa_sas_node = FUNC1(sizeof(*hpsa_sas_node), GFP_KERNEL);
	if (hpsa_sas_node) {
		hpsa_sas_node->parent_dev = parent_dev;
		FUNC0(&hpsa_sas_node->port_list_head);
	}

	return hpsa_sas_node;
}