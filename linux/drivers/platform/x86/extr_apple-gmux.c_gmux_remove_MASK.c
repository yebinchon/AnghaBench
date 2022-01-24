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
struct pnp_dev {int dummy; } ;
struct apple_gmux_data {scalar_t__ gpe; int /*<<< orphan*/  iolen; int /*<<< orphan*/  iostart; int /*<<< orphan*/  bdev; int /*<<< orphan*/  dhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * apple_gmux_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  gmux_notify_handler ; 
 int /*<<< orphan*/  FUNC6 (struct apple_gmux_data*) ; 
 struct apple_gmux_data* FUNC7 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct pnp_dev *pnp)
{
	struct apple_gmux_data *gmux_data = FUNC7(pnp);

	FUNC9();
	FUNC5(gmux_data);
	if (gmux_data->gpe >= 0) {
		FUNC0(NULL, gmux_data->gpe);
		FUNC1(gmux_data->dhandle,
					   ACPI_DEVICE_NOTIFY,
					   &gmux_notify_handler);
	}

	FUNC4(gmux_data->bdev);

	FUNC8(gmux_data->iostart, gmux_data->iolen);
	apple_gmux_data = NULL;
	FUNC6(gmux_data);

	FUNC2();
	FUNC3();
}