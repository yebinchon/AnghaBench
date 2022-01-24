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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wmi_block {int /*<<< orphan*/  dev; } ;
struct acpi_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct wmi_block**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer const*,struct acpi_buffer*) ; 

acpi_status FUNC2(const char *guid_string, u8 instance,
u32 method_id, const struct acpi_buffer *in, struct acpi_buffer *out)
{
	struct wmi_block *wblock = NULL;

	if (!FUNC0(guid_string, &wblock))
		return AE_ERROR;
	return FUNC1(&wblock->dev, instance, method_id,
				      in, out);
}