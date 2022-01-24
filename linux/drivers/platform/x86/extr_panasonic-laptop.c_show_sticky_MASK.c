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
struct pcc_acpi {int* sinf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t SINF_STICKY_KEY ; 
 struct pcc_acpi* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcc_acpi*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct acpi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	struct acpi_device *acpi = FUNC3(dev);
	struct pcc_acpi *pcc = FUNC0(acpi);

	if (!FUNC1(pcc))
		return -EIO;

	return FUNC2(buf, PAGE_SIZE, "%u\n", pcc->sinf[SINF_STICKY_KEY]);
}