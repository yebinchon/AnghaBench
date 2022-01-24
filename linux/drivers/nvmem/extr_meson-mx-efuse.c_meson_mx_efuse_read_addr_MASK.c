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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct meson_mx_efuse {scalar_t__ base; TYPE_1__ config; } ;

/* Variables and functions */
 int FUNC0 (int,unsigned int) ; 
 scalar_t__ MESON_MX_EFUSE_CNTL1 ; 
 int MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY ; 
 int MESON_MX_EFUSE_CNTL1_AUTO_RD_START ; 
 int MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK ; 
 int MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET ; 
 scalar_t__ MESON_MX_EFUSE_CNTL2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_mx_efuse*,scalar_t__,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct meson_mx_efuse *efuse,
				    unsigned int addr, u32 *value)
{
	int err;
	u32 regval;

	/* write the address to read */
	regval = FUNC0(MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, addr);
	FUNC2(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, regval);

	/* inform the hardware that we changed the address */
	FUNC2(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET,
				 MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET);
	FUNC2(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET, 0);

	/* start the read process */
	FUNC2(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_AUTO_RD_START,
				 MESON_MX_EFUSE_CNTL1_AUTO_RD_START);
	FUNC2(efuse, MESON_MX_EFUSE_CNTL1,
				 MESON_MX_EFUSE_CNTL1_AUTO_RD_START, 0);

	/*
	 * perform a dummy read to ensure that the HW has the RD_BUSY bit set
	 * when polling for the status below.
	 */
	FUNC3(efuse->base + MESON_MX_EFUSE_CNTL1);

	err = FUNC4(efuse->base + MESON_MX_EFUSE_CNTL1,
			regval,
			(!(regval & MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY)),
			1, 1000);
	if (err) {
		FUNC1(efuse->config.dev,
			"Timeout while reading efuse address %u\n", addr);
		return err;
	}

	*value = FUNC3(efuse->base + MESON_MX_EFUSE_CNTL2);

	return 0;
}