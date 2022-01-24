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
struct sh_msiof_spi_priv {scalar_t__ mapbase; } ;

/* Variables and functions */
 scalar_t__ CTR ; 
 int FUNC0 (scalar_t__,int,int,int,int) ; 
 int FUNC1 (struct sh_msiof_spi_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_msiof_spi_priv*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct sh_msiof_spi_priv *p,
				    u32 clr, u32 set)
{
	u32 mask = clr | set;
	u32 data;

	data = FUNC1(p, CTR);
	data &= ~clr;
	data |= set;
	FUNC2(p, CTR, data);

	return FUNC0(p->mapbase + CTR, data,
					 (data & mask) == set, 1, 100);
}