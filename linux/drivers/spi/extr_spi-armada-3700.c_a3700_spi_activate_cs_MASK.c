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
typedef  unsigned int u32 ;
struct a3700_spi {int dummy; } ;

/* Variables and functions */
 unsigned int A3700_SPI_EN ; 
 int /*<<< orphan*/  A3700_SPI_IF_CTRL_REG ; 
 unsigned int FUNC0 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct a3700_spi *a3700_spi, unsigned int cs)
{
	u32 val;

	val = FUNC0(a3700_spi, A3700_SPI_IF_CTRL_REG);
	val |= (A3700_SPI_EN << cs);
	FUNC1(a3700_spi, A3700_SPI_IF_CTRL_REG, val);
}