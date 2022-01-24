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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *dt)
{
	unsigned long time = 0;
	__le32 hw_time = 0;

	FUNC0(dev, 0x203, 4, (u8 *)&hw_time);
	time = FUNC1(hw_time);

	FUNC2(time, dt);
	return 0;
}