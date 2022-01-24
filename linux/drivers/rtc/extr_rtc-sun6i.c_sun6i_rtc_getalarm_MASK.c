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
struct sun6i_rtc_dev {int /*<<< orphan*/  alarm; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SUN6I_ALRM_EN_CNT_EN ; 
 scalar_t__ SUN6I_ALRM_IRQ_EN ; 
 scalar_t__ SUN6I_ALRM_IRQ_STA ; 
 struct sun6i_rtc_dev* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct sun6i_rtc_dev *chip = FUNC0(dev);
	unsigned long flags;
	u32 alrm_st;
	u32 alrm_en;

	FUNC3(&chip->lock, flags);
	alrm_en = FUNC1(chip->base + SUN6I_ALRM_IRQ_EN);
	alrm_st = FUNC1(chip->base + SUN6I_ALRM_IRQ_STA);
	FUNC4(&chip->lock, flags);

	wkalrm->enabled = !!(alrm_en & SUN6I_ALRM_EN_CNT_EN);
	wkalrm->pending = !!(alrm_st & SUN6I_ALRM_EN_CNT_EN);
	FUNC2(chip->alarm, &wkalrm->time);

	return 0;
}