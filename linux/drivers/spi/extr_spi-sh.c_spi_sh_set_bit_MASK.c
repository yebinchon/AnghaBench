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
struct spi_sh_data {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct spi_sh_data*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_sh_data*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct spi_sh_data *ss, unsigned long val,
				unsigned long offset)
{
	unsigned long tmp;

	tmp = FUNC0(ss, offset);
	tmp |= val;
	FUNC1(ss, tmp, offset);
}