#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int vendor; int product; } ;
struct ulpi {int /*<<< orphan*/  dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULPI_PRODUCT_ID_HIGH ; 
 int /*<<< orphan*/  ULPI_PRODUCT_ID_LOW ; 
 int /*<<< orphan*/  ULPI_SCRATCH ; 
 int /*<<< orphan*/  ULPI_VENDOR_ID_HIGH ; 
 int /*<<< orphan*/  ULPI_VENDOR_ID_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct ulpi*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ulpi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ulpi *ulpi)
{
	int ret;

	/* Test the interface */
	ret = FUNC3(ulpi, ULPI_SCRATCH, 0xaa);
	if (ret < 0)
		goto err;

	ret = FUNC2(ulpi, ULPI_SCRATCH);
	if (ret < 0)
		return ret;

	if (ret != 0xaa)
		goto err;

	ulpi->id.vendor = FUNC2(ulpi, ULPI_VENDOR_ID_LOW);
	ulpi->id.vendor |= FUNC2(ulpi, ULPI_VENDOR_ID_HIGH) << 8;

	ulpi->id.product = FUNC2(ulpi, ULPI_PRODUCT_ID_LOW);
	ulpi->id.product |= FUNC2(ulpi, ULPI_PRODUCT_ID_HIGH) << 8;

	/* Some ULPI devices don't have a vendor id so rely on OF match */
	if (ulpi->id.vendor == 0)
		goto err;

	FUNC1("ulpi:v%04xp%04x", ulpi->id.vendor, ulpi->id.product);
	return 0;
err:
	FUNC0(&ulpi->dev);
	return 0;
}