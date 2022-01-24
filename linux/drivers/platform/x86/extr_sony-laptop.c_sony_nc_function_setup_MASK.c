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
struct acpi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* cap; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 TYPE_1__* handles ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,unsigned int*) ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 
 unsigned int FUNC4 (struct platform_device*,unsigned int) ; 
 unsigned int FUNC5 (struct platform_device*) ; 
 unsigned int FUNC6 (struct platform_device*,unsigned int) ; 
 unsigned int FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*) ; 
 unsigned int FUNC9 (struct platform_device*,unsigned int) ; 
 unsigned int FUNC10 (struct platform_device*,unsigned int) ; 
 unsigned int FUNC11 (struct platform_device*) ; 
 unsigned int FUNC12 (struct platform_device*) ; 
 unsigned int FUNC13 (struct acpi_device*,unsigned int) ; 
 unsigned int FUNC14 (struct platform_device*) ; 
 unsigned int FUNC15 (struct platform_device*) ; 
 unsigned int FUNC16 (struct platform_device*,unsigned int) ; 
 unsigned int FUNC17 (struct platform_device*) ; 

__attribute__((used)) static void FUNC18(struct acpi_device *device,
		struct platform_device *pf_device)
{
	unsigned int i, result, bitmask, arg;

	if (!handles)
		return;

	/* setup found handles here */
	for (i = 0; i < FUNC0(handles->cap); i++) {
		unsigned int handle = handles->cap[i];

		if (!handle)
			continue;

		FUNC1("setting up handle 0x%.4x\n", handle);

		switch (handle) {
		case 0x0100:
		case 0x0101:
		case 0x0127:
			/* setup hotkeys */
			FUNC3(handle, 0, &result);
			break;
		case 0x0102:
			/* setup hotkeys */
			FUNC3(handle, 0x100, &result);
			break;
		case 0x0105:
		case 0x0148:
			/* touchpad enable/disable */
			result = FUNC16(pf_device, handle);
			if (result)
				FUNC2("couldn't set up touchpad control function (%d)\n",
						result);
			break;
		case 0x0115:
		case 0x0136:
		case 0x013f:
			result = FUNC4(pf_device, handle);
			if (result)
				FUNC2("couldn't set up battery care function (%d)\n",
						result);
			break;
		case 0x0119:
		case 0x015D:
			result = FUNC10(pf_device, handle);
			if (result)
				FUNC2("couldn't set up lid resume function (%d)\n",
						result);
			break;
		case 0x0122:
			result = FUNC15(pf_device);
			if (result)
				FUNC2("couldn't set up thermal profile function (%d)\n",
						result);
			break;
		case 0x0128:
		case 0x0146:
		case 0x015B:
			result = FUNC6(pf_device, handle);
			if (result)
				FUNC2("couldn't set up GFX Switch status (%d)\n",
						result);
			break;
		case 0x0131:
			result = FUNC7(pf_device);
			if (result)
				FUNC2("couldn't set up high speed charging function (%d)\n",
				       result);
			break;
		case 0x0124:
		case 0x0135:
			result = FUNC13(device, handle);
			if (result)
				FUNC2("couldn't set up rfkill support (%d)\n",
						result);
			break;
		case 0x0137:
		case 0x0143:
		case 0x014b:
		case 0x014c:
		case 0x0153:
		case 0x0163:
			result = FUNC9(pf_device, handle);
			if (result)
				FUNC2("couldn't set up keyboard backlight function (%d)\n",
						result);
			break;
		case 0x0121:
			result = FUNC11(pf_device);
			if (result)
				FUNC2("couldn't set up low battery function (%d)\n",
				       result);
			break;
		case 0x0149:
			result = FUNC5(pf_device);
			if (result)
				FUNC2("couldn't set up fan speed function (%d)\n",
				       result);
			break;
		case 0x0155:
			result = FUNC17(pf_device);
			if (result)
				FUNC2("couldn't set up USB charge support (%d)\n",
						result);
			break;
		case 0x011D:
			result = FUNC12(pf_device);
			if (result)
				FUNC2("couldn't set up panel ID function (%d)\n",
				       result);
			break;
		case 0x0168:
			result = FUNC14(pf_device);
			if (result)
				FUNC2("couldn't set up smart connect support (%d)\n",
						result);
			break;
		default:
			continue;
		}
	}

	/* Enable all events */
	arg = 0x10;
	if (!FUNC8(sony_nc_acpi_handle, "SN00", &arg, &bitmask))
		FUNC8(sony_nc_acpi_handle, "SN02", &bitmask,
				&result);
}