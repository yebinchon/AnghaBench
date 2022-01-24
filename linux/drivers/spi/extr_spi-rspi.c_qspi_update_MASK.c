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
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rspi_data const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rspi_data const*,int,int) ; 

__attribute__((used)) static void FUNC2(const struct rspi_data *rspi, u8 mask, u8 val, u8 reg)
{
	u8 data;

	data = FUNC0(rspi, reg);
	data &= ~mask;
	data |= (val & mask);
	FUNC1(rspi, data, reg);
}