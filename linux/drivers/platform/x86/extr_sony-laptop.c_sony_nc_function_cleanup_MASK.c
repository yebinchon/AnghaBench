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
struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int* cap; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 TYPE_1__* handles ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*) ; 

__attribute__((used)) static void FUNC16(struct platform_device *pd)
{
	unsigned int i, result, bitmask, handle;

	if (!handles)
		return;

	/* get enabled events and disable them */
	FUNC6(sony_nc_acpi_handle, "SN01", NULL, &bitmask);
	FUNC6(sony_nc_acpi_handle, "SN03", &bitmask, &result);

	/* cleanup handles here */
	for (i = 0; i < FUNC0(handles->cap); i++) {

		handle = handles->cap[i];

		if (!handle)
			continue;

		switch (handle) {
		case 0x0105:
		case 0x0148:
			FUNC14(pd);
			break;
		case 0x0115:
		case 0x0136:
		case 0x013f:
			FUNC1(pd);
			break;
		case 0x0119:
		case 0x015D:
			FUNC8(pd);
			break;
		case 0x0122:
			FUNC13(pd);
			break;
		case 0x0128:
		case 0x0146:
		case 0x015B:
			FUNC3(pd);
			break;
		case 0x0131:
			FUNC5(pd);
			break;
		case 0x0124:
		case 0x0135:
			FUNC11();
			break;
		case 0x0137:
		case 0x0143:
		case 0x014b:
		case 0x014c:
		case 0x0153:
		case 0x0163:
			FUNC7(pd, handle);
			break;
		case 0x0121:
			FUNC9(pd);
			break;
		case 0x0149:
			FUNC2(pd);
			break;
		case 0x0155:
			FUNC15(pd);
			break;
		case 0x011D:
			FUNC10(pd);
			break;
		case 0x0168:
			FUNC12(pd);
			break;
		default:
			continue;
		}
	}

	/* finally cleanup the handles list */
	FUNC4(pd);
}