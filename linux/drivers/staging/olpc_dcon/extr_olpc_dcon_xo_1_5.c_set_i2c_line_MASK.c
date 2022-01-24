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
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int) ; 

__attribute__((used)) static void FUNC2(int sda, int scl)
{
	unsigned char tmp;
	unsigned int port = 0x26;

	/* FIXME: This directly accesses the CRT GPIO controller !!! */
	FUNC1(port, 0x3c4);
	tmp = FUNC0(0x3c5);

	if (scl)
		tmp |= 0x20;
	else
		tmp &= ~0x20;

	if (sda)
		tmp |= 0x10;
	else
		tmp &= ~0x10;

	tmp |= 0x01;

	FUNC1(port, 0x3c4);
	FUNC1(tmp, 0x3c5);
}