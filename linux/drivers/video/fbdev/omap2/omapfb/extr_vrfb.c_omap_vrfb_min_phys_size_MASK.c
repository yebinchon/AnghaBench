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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;

/* Variables and functions */
 unsigned long OMAP_VRFB_LINE_LEN ; 
 scalar_t__ FUNC0 (unsigned long,int) ; 
 unsigned long FUNC1 (int,int) ; 

u32 FUNC2(u16 width, u16 height, u8 bytespp)
{
	unsigned long image_width_roundup = FUNC1(width,
		bytespp);

	if (image_width_roundup > OMAP_VRFB_LINE_LEN)
		return 0;

	return (width * height * bytespp) + FUNC0(
		image_width_roundup, bytespp);
}