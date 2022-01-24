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
struct device {int dummy; } ;
struct armada38x_rtc {int dummy; } ;

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/  RTC_CCR ; 
 unsigned long RTC_CCR_MODE ; 
 long FUNC1 (long) ; 
 long FUNC2 (long,long,long) ; 
 struct armada38x_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct armada38x_rtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, long offset)
{
	struct armada38x_rtc *rtc = FUNC3(dev);
	unsigned long ccr = 0;
	long ppb_cor, off;

	/*
	 * The maximum ppb_cor is -128 * 3815 .. 127 * 3815, but we
	 * need to clamp the input.  This equates to -484270 .. 488558.
	 * Not only is this to stop out of range "off" but also to
	 * avoid the division by zero in armada38x_ppb_convert().
	 */
	offset = FUNC2(offset, -484270L, 488558L);

	ppb_cor = FUNC1(offset);

	/*
	 * Use low update mode where possible, which gives a better
	 * resolution of correction.
	 */
	off = FUNC0(ppb_cor, 954);
	if (off > 127 || off < -128) {
		ccr = RTC_CCR_MODE;
		off = FUNC0(ppb_cor, 3815);
	}

	/*
	 * Armada 388 requires a bit pattern in bits 14..8 depending on
	 * the sign bit: { 0, ~S, S, S, S, S, S }
	 */
	ccr |= (off & 0x3fff) ^ 0x2000;
	FUNC4(ccr, rtc, RTC_CCR);

	return 0;
}