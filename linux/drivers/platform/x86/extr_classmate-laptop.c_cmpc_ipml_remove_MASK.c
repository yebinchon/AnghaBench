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
struct ipml200_dev {scalar_t__ rf; int /*<<< orphan*/  bd; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipml200_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipml200_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *acpi)
{
	struct ipml200_dev *ipml;

	ipml = FUNC1(&acpi->dev);

	FUNC0(ipml->bd);

	if (ipml->rf) {
		FUNC4(ipml->rf);
		FUNC3(ipml->rf);
	}

	FUNC2(ipml);

	return 0;
}