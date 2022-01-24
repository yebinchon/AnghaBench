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
struct sas_port {int /*<<< orphan*/  phy_list_mutex; int /*<<< orphan*/  num_phys; } ;
struct sas_phy {int /*<<< orphan*/  port_siblings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_port*,struct sas_phy*) ; 

void FUNC4(struct sas_port *port, struct sas_phy *phy)
{
	FUNC1(&port->phy_list_mutex);
	FUNC3(port, phy);
	FUNC0(&phy->port_siblings);
	port->num_phys--;
	FUNC2(&port->phy_list_mutex);
}