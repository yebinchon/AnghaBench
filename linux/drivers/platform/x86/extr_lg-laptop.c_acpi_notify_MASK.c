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
typedef  int /*<<< orphan*/  u32 ;
struct key_entry {scalar_t__ type; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int INIT_SPARSE_KEYMAP ; 
 scalar_t__ KE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int inited ; 
 struct key_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct key_entry*,int,int) ; 
 int /*<<< orphan*/  wmi_input_dev ; 

__attribute__((used)) static void FUNC3(struct acpi_device *device, u32 event)
{
	struct key_entry *key;

	FUNC0(device->handle, "notify: %d\n", event);
	if (inited & INIT_SPARSE_KEYMAP) {
		key = FUNC1(wmi_input_dev, 0x80);
		if (key && key->type == KE_KEY)
			FUNC2(wmi_input_dev, key, 1, true);
	}
}