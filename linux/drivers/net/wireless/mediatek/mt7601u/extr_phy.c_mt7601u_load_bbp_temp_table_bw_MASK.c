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
struct reg_table {int /*<<< orphan*/  n; int /*<<< orphan*/  regs; } ;
struct mt7601u_dev {size_t temp_mode; size_t bw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MT_MCU_MEMMAP_BBP ; 
 size_t MT_TEMP_MODE_LOW ; 
 scalar_t__ FUNC0 (int) ; 
 struct reg_table** bbp_mode_table ; 
 int FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mt7601u_dev *dev)
{
	const struct reg_table *t;

	if (FUNC0(dev->temp_mode > MT_TEMP_MODE_LOW))
		return -EINVAL;

	t = &bbp_mode_table[dev->temp_mode][dev->bw];

	return FUNC1(dev, MT_MCU_MEMMAP_BBP, t->regs, t->n);
}