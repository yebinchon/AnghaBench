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
struct gb_fw_core {int /*<<< orphan*/  download_connection; int /*<<< orphan*/  spi_connection; int /*<<< orphan*/  cap_connection; int /*<<< orphan*/  mgmt_connection; } ;
struct gb_bundle {TYPE_1__* intf; } ;
struct TYPE_2__ {int quirks; } ;

/* Variables and functions */
 int GB_INTERFACE_QUIRK_NO_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_bundle*) ; 
 int FUNC6 (struct gb_bundle*) ; 
 struct gb_fw_core* FUNC7 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_fw_core*) ; 

__attribute__((used)) static void FUNC9(struct gb_bundle *bundle)
{
	struct gb_fw_core *fw_core = FUNC7(bundle);
	int ret;

	/* FIXME: Remove this after S2 Loader gets runtime PM support */
	if (!(bundle->intf->quirks & GB_INTERFACE_QUIRK_NO_PM)) {
		ret = FUNC6(bundle);
		if (ret)
			FUNC5(bundle);
	}

	FUNC3(fw_core->mgmt_connection);
	FUNC0(fw_core->cap_connection);
	FUNC4(fw_core->spi_connection);
	FUNC2(fw_core->download_connection);

	FUNC1(fw_core->mgmt_connection);
	FUNC1(fw_core->cap_connection);
	FUNC1(fw_core->spi_connection);
	FUNC1(fw_core->download_connection);

	FUNC8(fw_core);
}