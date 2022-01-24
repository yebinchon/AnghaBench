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
typedef  int u32 ;
struct wl1271 {int /*<<< orphan*/ * ptable; } ;
typedef  int s8 ;

/* Variables and functions */
 size_t PART_BOOT ; 
 size_t PART_TOP_PRCM_ELP_SOC ; 
 int WL18XX_METAL_VER_MASK ; 
 int WL18XX_METAL_VER_OFFSET ; 
 int WL18XX_NEW_METAL_VER_MASK ; 
 int WL18XX_NEW_METAL_VER_OFFSET ; 
 int WL18XX_PACKAGE_TYPE_OFFSET ; 
 int WL18XX_PACKAGE_TYPE_WSP ; 
 int WL18XX_PG_VER_MASK ; 
 int WL18XX_PG_VER_OFFSET ; 
 int WL18XX_RDL_VER_MASK ; 
 int WL18XX_RDL_VER_OFFSET ; 
 int /*<<< orphan*/  WL18XX_REG_FUSE_DATA_1_3 ; 
 int /*<<< orphan*/  WL18XX_REG_FUSE_DATA_2_3 ; 
 int WL18XX_ROM_VER_MASK ; 
 int WL18XX_ROM_VER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl, s8 *ver)
{
	u32 fuse;
	s8 rom = 0, metal = 0, pg_ver = 0, rdl_ver = 0, package_type = 0;
	int ret;

	ret = FUNC3(wl, &wl->ptable[PART_TOP_PRCM_ELP_SOC]);
	if (ret < 0)
		goto out;

	ret = FUNC2(wl, WL18XX_REG_FUSE_DATA_2_3, &fuse);
	if (ret < 0)
		goto out;

	package_type = (fuse >> WL18XX_PACKAGE_TYPE_OFFSET) & 1;

	ret = FUNC2(wl, WL18XX_REG_FUSE_DATA_1_3, &fuse);
	if (ret < 0)
		goto out;

	pg_ver = (fuse & WL18XX_PG_VER_MASK) >> WL18XX_PG_VER_OFFSET;
	rom = (fuse & WL18XX_ROM_VER_MASK) >> WL18XX_ROM_VER_OFFSET;

	if ((rom <= 0xE) && (package_type == WL18XX_PACKAGE_TYPE_WSP))
		metal = (fuse & WL18XX_METAL_VER_MASK) >>
			WL18XX_METAL_VER_OFFSET;
	else
		metal = (fuse & WL18XX_NEW_METAL_VER_MASK) >>
			WL18XX_NEW_METAL_VER_OFFSET;

	ret = FUNC2(wl, WL18XX_REG_FUSE_DATA_2_3, &fuse);
	if (ret < 0)
		goto out;

	rdl_ver = (fuse & WL18XX_RDL_VER_MASK) >> WL18XX_RDL_VER_OFFSET;

	FUNC0("wl18xx HW: %s, PG %d.%d (ROM 0x%x)",
		    FUNC1(rdl_ver), pg_ver, metal, rom);

	if (ver)
		*ver = pg_ver;

	ret = FUNC3(wl, &wl->ptable[PART_BOOT]);

out:
	return ret;
}