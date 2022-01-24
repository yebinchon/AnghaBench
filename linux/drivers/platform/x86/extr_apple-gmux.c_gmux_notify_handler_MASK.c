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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pnp_dev {int dummy; } ;
struct apple_gmux_data {int /*<<< orphan*/  powerchange_done; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int GMUX_INTERRUPT_STATUS_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct apple_gmux_data*) ; 
 int FUNC4 (struct apple_gmux_data*) ; 
 struct apple_gmux_data* FUNC5 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7(acpi_handle device, u32 value, void *context)
{
	u8 status;
	struct pnp_dev *pnp = (struct pnp_dev *)context;
	struct apple_gmux_data *gmux_data = FUNC5(pnp);

	status = FUNC4(gmux_data);
	FUNC2(gmux_data);
	FUNC6("Notify handler called: status %d\n", status);

	FUNC1(gmux_data);
	FUNC3(gmux_data);

	if (status & GMUX_INTERRUPT_STATUS_POWER)
		FUNC0(&gmux_data->powerchange_done);
}