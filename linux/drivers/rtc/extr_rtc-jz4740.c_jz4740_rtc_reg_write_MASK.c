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
typedef  int /*<<< orphan*/  uint32_t ;
struct jz4740_rtc {scalar_t__ type; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ID_JZ4780 ; 
 int FUNC0 (struct jz4740_rtc*) ; 
 int FUNC1 (struct jz4740_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct jz4740_rtc *rtc, size_t reg,
	uint32_t val)
{
	int ret = 0;

	if (rtc->type >= ID_JZ4780)
		ret = FUNC1(rtc);
	if (ret == 0)
		ret = FUNC0(rtc);
	if (ret == 0)
		FUNC2(val, rtc->base + reg);

	return ret;
}