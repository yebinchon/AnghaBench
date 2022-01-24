#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; TYPE_1__* data; } ;
typedef  int s8 ;
struct TYPE_2__ {unsigned long (* read_rtc_reg ) (struct armada38x_rtc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CCR ; 
 unsigned long RTC_CCR_MODE ; 
 long FUNC0 (long) ; 
 struct armada38x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (struct armada38x_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, long *offset)
{
	struct armada38x_rtc *rtc = FUNC1(dev);
	unsigned long ccr, flags;
	long ppb_cor;

	FUNC2(&rtc->lock, flags);
	ccr = rtc->data->read_rtc_reg(rtc, RTC_CCR);
	FUNC3(&rtc->lock, flags);

	ppb_cor = (ccr & RTC_CCR_MODE ? 3815 : 954) * (s8)ccr;
	/* ppb_cor + 1000000000L can never be zero */
	*offset = FUNC0(ppb_cor);

	return 0;
}