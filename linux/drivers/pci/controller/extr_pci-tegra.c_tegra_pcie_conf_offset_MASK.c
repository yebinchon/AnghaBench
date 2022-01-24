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

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(u8 bus, unsigned int devfn,
					   unsigned int where)
{
	return ((where & 0xf00) << 16) | (bus << 16) | (FUNC1(devfn) << 11) |
	       (FUNC0(devfn) << 8) | (where & 0xff);
}