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
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct spi_sh_data *ss, unsigned long data,
			     unsigned long offset)
{
	if (ss->width == 8)
		FUNC1(data, ss->addr + (offset >> 2));
	else if (ss->width == 32)
		FUNC0(data, ss->addr + offset);
}