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
struct meson_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct meson_rtc*,int) ; 

__attribute__((used)) static void FUNC1(struct meson_rtc *rtc, u32 data,
				unsigned int nr)
{
	u32 bit = 1 << (nr - 1);

	while (bit) {
		FUNC0(rtc, data & bit);
		bit >>= 1;
	}
}