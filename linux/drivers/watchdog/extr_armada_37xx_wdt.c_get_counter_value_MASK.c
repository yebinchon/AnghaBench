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
typedef  int u64 ;
struct armada_37xx_watchdog {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static u64 FUNC3(struct armada_37xx_watchdog *dev, int id)
{
	u64 val;

	/*
	 * when low is read, high is latched into flip-flops so that it can be
	 * read consistently without using software debouncing
	 */
	val = FUNC2(dev->reg + FUNC1(id));
	val |= ((u64)FUNC2(dev->reg + FUNC0(id))) << 32;

	return val;
}