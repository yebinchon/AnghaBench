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
struct rtc_time {int dummy; } ;
struct mtk_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_TC ; 
 struct mtk_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_rtc*,struct rtc_time*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	struct mtk_rtc *hw = FUNC0(dev);

	FUNC1(hw, tm, MTK_TC);

	return 0;
}