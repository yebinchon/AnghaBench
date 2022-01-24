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
typedef  int u32 ;
struct mtk_thermal_bank {int id; struct mtk_thermal* mt; } ;
struct mtk_thermal {scalar_t__ thermal_base; int /*<<< orphan*/  lock; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ need_switch_bank; } ;

/* Variables and functions */
 scalar_t__ PTPCORESEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtk_thermal_bank *bank)
{
	struct mtk_thermal *mt = bank->mt;
	u32 val;

	if (mt->conf->need_switch_bank) {
		FUNC0(&mt->lock);

		val = FUNC1(mt->thermal_base + PTPCORESEL);
		val &= ~0xf;
		val |= bank->id;
		FUNC2(val, mt->thermal_base + PTPCORESEL);
	}
}