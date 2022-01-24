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
struct atmel_pwm_chip {unsigned long base; } ;

/* Variables and functions */
 unsigned int PWM_CH_REG_OFFSET ; 
 unsigned int PWM_CH_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static inline u32 FUNC1(struct atmel_pwm_chip *chip,
				     unsigned int ch, unsigned long offset)
{
	unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;

	return FUNC0(chip->base + base + offset);
}