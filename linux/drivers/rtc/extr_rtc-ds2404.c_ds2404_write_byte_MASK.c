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
typedef  int u8 ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 size_t DS2404_CLK ; 
 size_t DS2404_DQ ; 
 TYPE_1__* ds2404_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct device *dev, u8 byte)
{
	int i;

	FUNC0(ds2404_gpio[DS2404_DQ].gpio, 1);
	for (i = 0; i < 8; i++) {
		FUNC1(ds2404_gpio[DS2404_DQ].gpio, byte & (1 << i));
		FUNC2(10);
		FUNC1(ds2404_gpio[DS2404_CLK].gpio, 1);
		FUNC2(10);
		FUNC1(ds2404_gpio[DS2404_CLK].gpio, 0);
		FUNC2(10);
	}
}