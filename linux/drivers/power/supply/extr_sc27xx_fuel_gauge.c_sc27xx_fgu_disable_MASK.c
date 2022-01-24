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
struct sc27xx_fgu_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC27XX_CLK_EN0 ; 
 int /*<<< orphan*/  SC27XX_FGU_EN ; 
 int /*<<< orphan*/  SC27XX_FGU_RTC_EN ; 
 int /*<<< orphan*/  SC27XX_MODULE_EN0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *_data)
{
	struct sc27xx_fgu_data *data = _data;

	FUNC0(data->regmap, SC27XX_CLK_EN0, SC27XX_FGU_RTC_EN, 0);
	FUNC0(data->regmap, SC27XX_MODULE_EN0, SC27XX_FGU_EN, 0);
}