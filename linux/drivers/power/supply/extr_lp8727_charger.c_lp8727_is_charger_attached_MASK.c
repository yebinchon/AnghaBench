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

/* Variables and functions */
 int LP8727_ID_DEDICATED_CHG ; 
 int LP8727_ID_TA ; 
 int LP8727_ID_USB_CHG ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static bool FUNC1(const char *name, int id)
{
	if (!FUNC0(name, "ac"))
		return id == LP8727_ID_TA || id == LP8727_ID_DEDICATED_CHG;
	else if (!FUNC0(name, "usb"))
		return id == LP8727_ID_USB_CHG;

	return id >= LP8727_ID_TA && id <= LP8727_ID_USB_CHG;
}