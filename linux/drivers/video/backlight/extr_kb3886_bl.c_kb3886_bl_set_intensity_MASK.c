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

/* Variables and functions */
 int KB3886_ADC_DAC_PWM ; 
 int /*<<< orphan*/  KB3886_IO ; 
 int /*<<< orphan*/  KB3886_PARENT ; 
 int KB3886_PWM0_WRITE ; 
 int /*<<< orphan*/  bl_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(int intensity)
{
	FUNC0(&bl_mutex);
	intensity = intensity&0xff;
	FUNC2(KB3886_ADC_DAC_PWM, KB3886_PARENT);
	FUNC3(10000, 11000);
	FUNC2(KB3886_PWM0_WRITE, KB3886_IO);
	FUNC3(10000, 11000);
	FUNC2(intensity, KB3886_IO);
	FUNC1(&bl_mutex);
}