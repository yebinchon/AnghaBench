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
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 size_t SONY_BLUETOOTH ; 
 size_t SONY_WIFI ; 
 size_t SONY_WIMAX ; 
 size_t SONY_WWAN ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*,size_t) ; 
 int /*<<< orphan*/ * sony_rfkill_devices ; 
 unsigned int sony_rfkill_handle ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device,
		unsigned int handle)
{
	u64 offset;
	int i;
	unsigned char buffer[32] = { 0 };

	offset = FUNC2(handle);
	sony_rfkill_handle = handle;

	i = FUNC3(sony_nc_acpi_handle, "SN06", &offset, buffer,
			32);
	if (i < 0)
		return i;

	/* The buffer is filled with magic numbers describing the devices
	 * available, 0xff terminates the enumeration.
	 * Known codes:
	 *	0x00 WLAN
	 *	0x10 BLUETOOTH
	 *	0x20 WWAN GPRS-EDGE
	 *	0x21 WWAN HSDPA
	 *	0x22 WWAN EV-DO
	 *	0x23 WWAN GPS
	 *	0x25 Gobi WWAN no GPS
	 *	0x26 Gobi WWAN + GPS
	 *	0x28 Gobi WWAN no GPS
	 *	0x29 Gobi WWAN + GPS
	 *	0x30 WIMAX
	 *	0x50 Gobi WWAN no GPS
	 *	0x51 Gobi WWAN + GPS
	 *	0x70 no SIM card slot
	 *	0x71 SIM card slot
	 */
	for (i = 0; i < FUNC0(buffer); i++) {

		if (buffer[i] == 0xff)
			break;

		FUNC1("Radio devices, found 0x%.2x\n", buffer[i]);

		if (buffer[i] == 0 && !sony_rfkill_devices[SONY_WIFI])
			FUNC4(device, SONY_WIFI);

		if (buffer[i] == 0x10 && !sony_rfkill_devices[SONY_BLUETOOTH])
			FUNC4(device, SONY_BLUETOOTH);

		if (((0xf0 & buffer[i]) == 0x20 ||
					(0xf0 & buffer[i]) == 0x50) &&
				!sony_rfkill_devices[SONY_WWAN])
			FUNC4(device, SONY_WWAN);

		if (buffer[i] == 0x30 && !sony_rfkill_devices[SONY_WIMAX])
			FUNC4(device, SONY_WIMAX);
	}
	return 0;
}