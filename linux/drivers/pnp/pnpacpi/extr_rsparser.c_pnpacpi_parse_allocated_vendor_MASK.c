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
typedef  scalar_t__ u64 ;
struct pnp_dev {int dummy; } ;
struct acpi_resource_vendor_typed {scalar_t__ byte_data; } ;
typedef  int /*<<< orphan*/  start ;
typedef  int /*<<< orphan*/  length ;

/* Variables and functions */
 int /*<<< orphan*/  hp_ccsr_uuid ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pnp_dev*,struct acpi_resource_vendor_typed*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct pnp_dev *dev,
				    struct acpi_resource_vendor_typed *vendor)
{
	if (FUNC2(dev, vendor, &hp_ccsr_uuid, 16)) {
		u64 start, length;

		FUNC0(&start, vendor->byte_data, sizeof(start));
		FUNC0(&length, vendor->byte_data + 8, sizeof(length));

		FUNC1(dev, start, start + length - 1, 0);
	}
}