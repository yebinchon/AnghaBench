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
struct pcie_pme_service_data {int /*<<< orphan*/  work; } ;
struct pcie_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pcie_device*) ; 
 struct pcie_pme_service_data* FUNC2 (struct pcie_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcie_pme_service_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pcie_pme_service_data*) ; 

__attribute__((used)) static void FUNC5(struct pcie_device *srv)
{
	struct pcie_pme_service_data *data = FUNC2(srv);

	FUNC4(srv->port, data);
	FUNC1(srv->irq, srv);
	FUNC0(&data->work);
	FUNC3(data);
}