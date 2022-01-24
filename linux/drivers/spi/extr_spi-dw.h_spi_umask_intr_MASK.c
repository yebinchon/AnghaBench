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
struct dw_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_SPI_IMR ; 
 int FUNC0 (struct dw_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct dw_spi *dws, u32 mask)
{
	u32 new_mask;

	new_mask = FUNC0(dws, DW_SPI_IMR) | mask;
	FUNC1(dws, DW_SPI_IMR, new_mask);
}