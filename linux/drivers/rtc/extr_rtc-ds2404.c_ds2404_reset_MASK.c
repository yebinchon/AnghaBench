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
struct TYPE_2__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 size_t DS2404_CLK ; 
 size_t DS2404_DQ ; 
 size_t DS2404_RST ; 
 TYPE_1__* ds2404_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	FUNC1(ds2404_gpio[DS2404_RST].gpio, 0);
	FUNC2(1000);
	FUNC1(ds2404_gpio[DS2404_RST].gpio, 1);
	FUNC1(ds2404_gpio[DS2404_CLK].gpio, 0);
	FUNC0(ds2404_gpio[DS2404_DQ].gpio, 0);
	FUNC2(10);
}