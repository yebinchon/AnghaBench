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
typedef  int u32 ;
struct hantro_reg {int mask; int shift; int /*<<< orphan*/  base; } ;
struct hantro_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hantro_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct hantro_dev *vpu,
				    const struct hantro_reg *reg,
				    u32 val)
{
	u32 v;

	v = FUNC0(vpu, reg->base);
	v &= ~(reg->mask << reg->shift);
	v |= ((val & reg->mask) << reg->shift);
	FUNC1(vpu, v, reg->base);
}