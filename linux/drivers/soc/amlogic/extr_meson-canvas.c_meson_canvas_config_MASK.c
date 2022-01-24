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
typedef  size_t u8 ;
typedef  int u32 ;
struct meson_canvas {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/ * used; int /*<<< orphan*/  supports_endianness; } ;

/* Variables and functions */
 unsigned int CANVAS_BLKMODE_BIT ; 
 unsigned int CANVAS_ENDIAN_BIT ; 
 int CANVAS_HEIGHT_BIT ; 
 size_t CANVAS_LUT_WR_EN ; 
 int CANVAS_WIDTH_HBIT ; 
 int CANVAS_WIDTH_LBIT ; 
 int CANVAS_WIDTH_LWID ; 
 unsigned int CANVAS_WRAP_BIT ; 
 int /*<<< orphan*/  DMC_CAV_LUT_ADDR ; 
 int /*<<< orphan*/  DMC_CAV_LUT_DATAH ; 
 int /*<<< orphan*/  DMC_CAV_LUT_DATAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct meson_canvas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_canvas*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct meson_canvas *canvas, u8 canvas_index,
			u32 addr, u32 stride, u32 height,
			unsigned int wrap,
			unsigned int blkmode,
			unsigned int endian)
{
	unsigned long flags;

	if (endian && !canvas->supports_endianness) {
		FUNC2(canvas->dev,
			"Endianness is not supported on this SoC\n");
		return -EINVAL;
	}

	FUNC3(&canvas->lock, flags);
	if (!canvas->used[canvas_index]) {
		FUNC2(canvas->dev,
			"Trying to setup non allocated canvas %u\n",
			canvas_index);
		FUNC4(&canvas->lock, flags);
		return -EINVAL;
	}

	FUNC1(canvas, DMC_CAV_LUT_DATAL,
		     ((addr + 7) >> 3) |
		     (((stride + 7) >> 3) << CANVAS_WIDTH_LBIT));

	FUNC1(canvas, DMC_CAV_LUT_DATAH,
		     ((((stride + 7) >> 3) >> CANVAS_WIDTH_LWID) <<
						CANVAS_WIDTH_HBIT) |
		     (height << CANVAS_HEIGHT_BIT) |
		     (wrap << CANVAS_WRAP_BIT) |
		     (blkmode << CANVAS_BLKMODE_BIT) |
		     (endian << CANVAS_ENDIAN_BIT));

	FUNC1(canvas, DMC_CAV_LUT_ADDR,
		     CANVAS_LUT_WR_EN | canvas_index);

	/* Force a read-back to make sure everything is flushed. */
	FUNC0(canvas, DMC_CAV_LUT_DATAH);
	FUNC4(&canvas->lock, flags);

	return 0;
}