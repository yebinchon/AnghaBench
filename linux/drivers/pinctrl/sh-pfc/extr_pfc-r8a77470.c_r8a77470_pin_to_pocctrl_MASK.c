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
struct sh_pfc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(struct sh_pfc *pfc, unsigned int pin,
				   u32 *pocctrl)
{
	int bit = -EINVAL;

	*pocctrl = 0xe60600b0;

	if (pin >= FUNC0(0, 5) && pin <= FUNC0(0, 10))
		bit = 0;

	if (pin >= FUNC0(0, 13) && pin <= FUNC0(0, 22))
		bit = 2;

	if (pin >= FUNC0(4, 14) && pin <= FUNC0(4, 19))
		bit = 1;

	return bit;
}