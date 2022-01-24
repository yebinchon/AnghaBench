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
typedef  int u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static inline void
FUNC3(struct rtw_dev *rtwdev, u32 addr, u32 mask, u8 data)
{
	u32 shift;
	u8 orig, set;

	mask &= 0xff;
	shift = FUNC0(mask);

	orig = FUNC1(rtwdev, addr);
	set = (orig & ~mask) | ((data << shift) & mask);
	FUNC2(rtwdev, addr, set);
}