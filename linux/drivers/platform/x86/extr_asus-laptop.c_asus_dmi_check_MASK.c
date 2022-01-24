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
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int wlan_status ; 

__attribute__((used)) static void FUNC2(void)
{
	const char *model;

	model = FUNC0(DMI_PRODUCT_NAME);
	if (!model)
		return;

	/* On L1400B WLED control the sound card, don't mess with it ... */
	if (FUNC1(model, "L1400B", 6) == 0) {
		wlan_status = -1;
	}
}