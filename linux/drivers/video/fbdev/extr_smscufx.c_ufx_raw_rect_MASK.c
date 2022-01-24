#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct ufx_data {TYPE_3__* info; } ;
struct TYPE_5__ {int line_length; scalar_t__ smem_start; } ;
struct TYPE_4__ {int xres; int yres; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int BPP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct ufx_data *dev, u16 *cmd, int x, int y,
	int width, int height)
{
	size_t packed_line_len = FUNC0((width * 2), 4);
	size_t packed_rect_len = packed_line_len * height;
	int line;

	FUNC1(!dev);
	FUNC1(!dev->info);

	/* command word */
	*((u32 *)&cmd[0]) = FUNC3(0x01);

	/* length word */
	*((u32 *)&cmd[2]) = FUNC3(packed_rect_len + 16);

	cmd[4] = FUNC2(x);
	cmd[5] = FUNC2(y);
	cmd[6] = FUNC2(width);
	cmd[7] = FUNC2(height);

	/* frame base address */
	*((u32 *)&cmd[8]) = FUNC3(0);

	/* color mode and horizontal resolution */
	cmd[10] = FUNC2(0x4000 | dev->info->var.xres);

	/* vertical resolution */
	cmd[11] = FUNC2(dev->info->var.yres);

	/* packed data */
	for (line = 0; line < height; line++) {
		const int line_offset = dev->info->fix.line_length * (y + line);
		const int byte_offset = line_offset + (x * BPP);
		FUNC4(&cmd[(24 + (packed_line_len * line)) / 2],
			(char *)dev->info->fix.smem_start + byte_offset, width * BPP);
	}
}