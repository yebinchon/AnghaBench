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
struct rcar_pwm_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rcar_pwm_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_pwm_chip*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct rcar_pwm_chip *rp, u32 mask, u32 data,
			    unsigned int offset)
{
	u32 value;

	value = FUNC0(rp, offset);
	value &= ~mask;
	value |= data & mask;
	FUNC1(rp, value, offset);
}