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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  acpi_ids_done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_acpi_bits ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct work_struct *dummy)
{
	int rc;

	FUNC0(acpi_ids_done, nr_acpi_bits);

	rc = FUNC2();
	if (rc != 0)
		FUNC1("ACPI data upload failed, error = %d\n", rc);
}