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
struct acpiphp_slot {int dummy; } ;

/* Variables and functions */
 int ACPI_STA_DEVICE_UI ; 
 int FUNC0 (struct acpiphp_slot*) ; 

u8 FUNC1(struct acpiphp_slot *slot)
{
	return !(FUNC0(slot) & ACPI_STA_DEVICE_UI);
}