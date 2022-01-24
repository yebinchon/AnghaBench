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
typedef  int u8 ;
struct nvidia_par {int /*<<< orphan*/  PCIO; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct nvidia_par *par, int Lock)
{
	u8 cr11;

	FUNC1(par->PCIO, 0x3D4, 0x1F);
	FUNC1(par->PCIO, 0x3D5, Lock ? 0x99 : 0x57);

	FUNC1(par->PCIO, 0x3D4, 0x11);
	cr11 = FUNC0(par->PCIO, 0x3D5);
	if (Lock)
		cr11 |= 0x80;
	else
		cr11 &= ~0x80;
	FUNC1(par->PCIO, 0x3D5, cr11);
}