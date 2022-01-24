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
typedef  unsigned char nvmem_cell ;
struct inno_hdmi_phy {int chip_version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 int RK3328_BYPASS_PDATA_EN ; 
 int RK3328_BYPASS_PLLPD_EN ; 
 int RK3328_BYPASS_POWERON_EN ; 
 int RK3328_BYPASS_RXSENSE_EN ; 
 int RK3328_INT_POL_HIGH ; 
 int RK3328_PDATA_EN ; 
 int /*<<< orphan*/  FUNC2 (struct inno_hdmi_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (unsigned char*,size_t*) ; 

__attribute__((used)) static int FUNC7(struct inno_hdmi_phy *inno)
{
	struct nvmem_cell *cell;
	unsigned char *efuse_buf;
	size_t len;

	/*
	 * Use phy internal register control
	 * rxsense/poweron/pllpd/pdataen signal.
	 */
	FUNC2(inno, 0x01, RK3328_BYPASS_RXSENSE_EN |
		   RK3328_BYPASS_POWERON_EN |
		   RK3328_BYPASS_PLLPD_EN);
	FUNC2(inno, 0x02, RK3328_INT_POL_HIGH | RK3328_BYPASS_PDATA_EN |
		   RK3328_PDATA_EN);

	/* Disable phy irq */
	FUNC2(inno, 0x05, 0);
	FUNC2(inno, 0x07, 0);

	/* try to read the chip-version */
	inno->chip_version = 1;
	cell = FUNC4(inno->dev, "cpu-version");
	if (FUNC0(cell)) {
		if (FUNC1(cell) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		return 0;
	}

	efuse_buf = FUNC6(cell, &len);
	FUNC5(cell);

	if (FUNC0(efuse_buf))
		return 0;
	if (len == 1)
		inno->chip_version = efuse_buf[0] + 1;
	FUNC3(efuse_buf);

	return 0;
}