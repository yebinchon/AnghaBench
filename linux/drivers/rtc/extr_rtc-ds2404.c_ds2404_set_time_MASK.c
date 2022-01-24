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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *dt)
{
	u32 time = FUNC0(FUNC2(dt));
	FUNC1(dev, 0x203, 4, (u8 *)&time);
	return 0;
}