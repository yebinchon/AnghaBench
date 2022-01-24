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
struct rt2x00_dev {int dummy; } ;
struct link_qual {int vgc_level; int rssi; int vgc_level_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct rt2x00_dev *rt2x00dev,
				  struct link_qual *qual, u8 vgc_level)
{
	if (qual->vgc_level != vgc_level) {
		if (FUNC2(rt2x00dev, RT3572) ||
		    FUNC2(rt2x00dev, RT3593) ||
		    FUNC2(rt2x00dev, RT3883)) {
			FUNC1(rt2x00dev, 66,
						       vgc_level);
		} else if (FUNC2(rt2x00dev, RT5592)) {
			FUNC0(rt2x00dev, 83, qual->rssi > -65 ? 0x4a : 0x7a);
			FUNC1(rt2x00dev, 66, vgc_level);
		} else {
			FUNC0(rt2x00dev, 66, vgc_level);
		}

		qual->vgc_level = vgc_level;
		qual->vgc_level_reg = vgc_level;
	}
}