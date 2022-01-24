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
 int /*<<< orphan*/  FUNC0 (unsigned char,int,unsigned char*) ; 
 int FUNC1 (unsigned char,int,unsigned char*) ; 

unsigned char FUNC2(unsigned char addr, unsigned char reg)
{
	unsigned char value = 0xFF;

	if (FUNC1(addr, 1, &reg) == 1)
		FUNC0(addr, 1, &value);

	return value;
}