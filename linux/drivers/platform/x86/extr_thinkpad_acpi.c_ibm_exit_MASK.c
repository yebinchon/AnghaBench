#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ init_called; scalar_t__ acpi_driver_registered; scalar_t__ proc_created; scalar_t__ acpi_notify_installed; } ;
struct ibm_struct {int /*<<< orphan*/  name; TYPE_2__ flags; int /*<<< orphan*/  (* exit ) () ;TYPE_1__* acpi; int /*<<< orphan*/  all_drivers; } ;
struct TYPE_3__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/  type; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TPACPI_DBG_EXIT ; 
 int /*<<< orphan*/  TPACPI_DBG_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dispatch_acpi_notify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_dir ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct ibm_struct *ibm)
{
	FUNC3(TPACPI_DBG_EXIT, "removing %s\n", ibm->name);

	FUNC5(&ibm->all_drivers);

	if (ibm->flags.acpi_notify_installed) {
		FUNC3(TPACPI_DBG_EXIT,
			"%s: acpi_remove_notify_handler\n", ibm->name);
		FUNC0(!ibm->acpi);
		FUNC2(*ibm->acpi->handle,
					   ibm->acpi->type,
					   dispatch_acpi_notify);
		ibm->flags.acpi_notify_installed = 0;
	}

	if (ibm->flags.proc_created) {
		FUNC3(TPACPI_DBG_EXIT,
			"%s: remove_proc_entry\n", ibm->name);
		FUNC6(ibm->name, proc_dir);
		ibm->flags.proc_created = 0;
	}

	if (ibm->flags.acpi_driver_registered) {
		FUNC3(TPACPI_DBG_EXIT,
			"%s: acpi_bus_unregister_driver\n", ibm->name);
		FUNC0(!ibm->acpi);
		FUNC1(ibm->acpi->driver);
		FUNC4(ibm->acpi->driver);
		ibm->acpi->driver = NULL;
		ibm->flags.acpi_driver_registered = 0;
	}

	if (ibm->flags.init_called && ibm->exit) {
		ibm->exit();
		ibm->flags.init_called = 0;
	}

	FUNC3(TPACPI_DBG_INIT, "finished removing %s\n", ibm->name);
}