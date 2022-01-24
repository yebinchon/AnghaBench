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
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER1 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER2 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	FUNC0(GPIO_NR_PALMTC_PCMCIA_RESET, 1);
	FUNC0(GPIO_NR_PALMTC_PCMCIA_POWER2, 0);
	FUNC1(40);
	FUNC0(GPIO_NR_PALMTC_PCMCIA_POWER1, 0);
	return 0;
}