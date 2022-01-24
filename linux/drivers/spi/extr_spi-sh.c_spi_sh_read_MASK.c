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
struct spi_sh_data {int width; scalar_t__ addr; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC2(struct spi_sh_data *ss, unsigned long offset)
{
	if (ss->width == 8)
		return FUNC1(ss->addr + (offset >> 2));
	else if (ss->width == 32)
		return FUNC0(ss->addr + offset);
	else
		return 0;
}