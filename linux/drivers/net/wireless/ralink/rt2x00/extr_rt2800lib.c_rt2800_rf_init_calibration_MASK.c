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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
				       const unsigned int rf_reg)
{
	u8 rfcsr;

	rfcsr = FUNC2(rt2x00dev, rf_reg);
	FUNC4(&rfcsr, FUNC0(0x80), 1);
	FUNC3(rt2x00dev, rf_reg, rfcsr);
	FUNC1(1);
	FUNC4(&rfcsr, FUNC0(0x80), 0);
	FUNC3(rt2x00dev, rf_reg, rfcsr);
}