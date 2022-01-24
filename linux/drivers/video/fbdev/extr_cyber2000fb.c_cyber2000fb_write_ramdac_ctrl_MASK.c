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
struct cfb_info {unsigned int ramdac_ctrl; unsigned int ramdac_powerdown; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,struct cfb_info*) ; 

__attribute__((used)) static void FUNC2(struct cfb_info *cfb)
{
	unsigned int i;
	unsigned int val = cfb->ramdac_ctrl | cfb->ramdac_powerdown;

	FUNC1(0x56, 0x3ce, cfb);
	i = FUNC0(0x3cf, cfb);
	FUNC1(i | 4, 0x3cf, cfb);
	FUNC1(val, 0x3c6, cfb);
	FUNC1(i, 0x3cf, cfb);
	/* prevent card lock-up observed on x86 with CyberPro 2000 */
	FUNC0(0x3cf, cfb);
}