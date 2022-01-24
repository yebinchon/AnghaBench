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
typedef  int /*<<< orphan*/  u32 ;
struct cedrus_dev {int dummy; } ;
typedef  enum cedrus_h264_sram_off { ____Placeholder_cedrus_h264_sram_off } cedrus_h264_sram_off ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  VE_AVC_SRAM_PORT_DATA ; 
 int /*<<< orphan*/  VE_AVC_SRAM_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct cedrus_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cedrus_dev *dev,
				   enum cedrus_h264_sram_off off,
				   const void *data, size_t len)
{
	const u32 *buffer = data;
	size_t count = FUNC0(len, 4);

	FUNC1(dev, VE_AVC_SRAM_PORT_OFFSET, off << 2);

	while (count--)
		FUNC1(dev, VE_AVC_SRAM_PORT_DATA, *buffer++);
}