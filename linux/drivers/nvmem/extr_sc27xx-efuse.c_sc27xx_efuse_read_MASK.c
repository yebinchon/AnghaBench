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
typedef  size_t u32 ;
struct sc27xx_efuse {int /*<<< orphan*/  regmap; scalar_t__ base; } ;

/* Variables and functions */
 size_t BITS_PER_BYTE ; 
 int EINVAL ; 
 scalar_t__ SC27XX_EFUSE_BLOCK_INDEX ; 
 size_t SC27XX_EFUSE_BLOCK_MASK ; 
 size_t SC27XX_EFUSE_BLOCK_MAX ; 
 size_t SC27XX_EFUSE_BLOCK_WIDTH ; 
 int /*<<< orphan*/  SC27XX_EFUSE_CLR_RDDONE ; 
 scalar_t__ SC27XX_EFUSE_DATA_RD ; 
 int /*<<< orphan*/  SC27XX_EFUSE_EN ; 
 scalar_t__ SC27XX_EFUSE_MODE_CTRL ; 
 int /*<<< orphan*/  SC27XX_EFUSE_RD_DONE ; 
 int /*<<< orphan*/  SC27XX_EFUSE_RD_START ; 
 int /*<<< orphan*/  SC27XX_EFUSE_STANDBY ; 
 scalar_t__ SC27XX_MODULE_EN ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int FUNC4 (struct sc27xx_efuse*) ; 
 int FUNC5 (struct sc27xx_efuse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sc27xx_efuse*) ; 

__attribute__((used)) static int FUNC7(void *context, u32 offset, void *val, size_t bytes)
{
	struct sc27xx_efuse *efuse = context;
	u32 buf, blk_index = offset / SC27XX_EFUSE_BLOCK_WIDTH;
	u32 blk_offset = (offset % SC27XX_EFUSE_BLOCK_WIDTH) * BITS_PER_BYTE;
	int ret;

	if (blk_index > SC27XX_EFUSE_BLOCK_MAX ||
	    bytes > SC27XX_EFUSE_BLOCK_WIDTH)
		return -EINVAL;

	ret = FUNC4(efuse);
	if (ret)
		return ret;

	/* Enable the efuse controller. */
	ret = FUNC2(efuse->regmap, SC27XX_MODULE_EN,
				 SC27XX_EFUSE_EN, SC27XX_EFUSE_EN);
	if (ret)
		goto unlock_efuse;

	/*
	 * Before reading, we should ensure the efuse controller is in
	 * standby state.
	 */
	ret = FUNC5(efuse, SC27XX_EFUSE_STANDBY);
	if (ret)
		goto disable_efuse;

	/* Set the block address to be read. */
	ret = FUNC3(efuse->regmap,
			   efuse->base + SC27XX_EFUSE_BLOCK_INDEX,
			   blk_index & SC27XX_EFUSE_BLOCK_MASK);
	if (ret)
		goto disable_efuse;

	/* Start reading process from efuse memory. */
	ret = FUNC2(efuse->regmap,
				 efuse->base + SC27XX_EFUSE_MODE_CTRL,
				 SC27XX_EFUSE_RD_START,
				 SC27XX_EFUSE_RD_START);
	if (ret)
		goto disable_efuse;

	/*
	 * Polling the read done status to make sure the reading process
	 * is completed, that means the data can be read out now.
	 */
	ret = FUNC5(efuse, SC27XX_EFUSE_RD_DONE);
	if (ret)
		goto disable_efuse;

	/* Read data from efuse memory. */
	ret = FUNC1(efuse->regmap, efuse->base + SC27XX_EFUSE_DATA_RD,
			  &buf);
	if (ret)
		goto disable_efuse;

	/* Clear the read done flag. */
	ret = FUNC2(efuse->regmap,
				 efuse->base + SC27XX_EFUSE_MODE_CTRL,
				 SC27XX_EFUSE_CLR_RDDONE,
				 SC27XX_EFUSE_CLR_RDDONE);

disable_efuse:
	/* Disable the efuse controller after reading. */
	FUNC2(efuse->regmap, SC27XX_MODULE_EN, SC27XX_EFUSE_EN, 0);
unlock_efuse:
	FUNC6(efuse);

	if (!ret) {
		buf >>= blk_offset;
		FUNC0(val, &buf, bytes);
	}

	return ret;
}