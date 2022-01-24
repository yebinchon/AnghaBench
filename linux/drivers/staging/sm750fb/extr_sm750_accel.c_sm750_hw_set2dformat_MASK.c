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
struct lynx_accel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_STRETCH_FORMAT ; 
 int DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK ; 
 int DE_STRETCH_FORMAT_PIXEL_FORMAT_SHIFT ; 
 int FUNC0 (struct lynx_accel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lynx_accel*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct lynx_accel *accel, int fmt)
{
	u32 reg;

	/* fmt=0,1,2 for 8,16,32,bpp on sm718/750/502 */
	reg = FUNC0(accel, DE_STRETCH_FORMAT);
	reg &= ~DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK;
	reg |= ((fmt << DE_STRETCH_FORMAT_PIXEL_FORMAT_SHIFT) &
		DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK);
	FUNC1(accel, DE_STRETCH_FORMAT, reg);
}