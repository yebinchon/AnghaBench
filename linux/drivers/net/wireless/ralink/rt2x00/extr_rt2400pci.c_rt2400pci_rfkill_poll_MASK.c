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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOCSR ; 
 int /*<<< orphan*/  GPIOCSR_VAL0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	reg = FUNC1(rt2x00dev, GPIOCSR);
	return FUNC0(reg, GPIOCSR_VAL0);
}