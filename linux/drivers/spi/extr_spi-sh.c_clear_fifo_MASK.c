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
 int /*<<< orphan*/  SPI_SH_CR2 ; 
 int /*<<< orphan*/  SPI_SH_RSTF ; 
 int /*<<< orphan*/  FUNC0 (struct spi_sh_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_sh_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_sh_data *ss)
{
	FUNC1(ss, SPI_SH_RSTF, SPI_SH_CR2);
	FUNC0(ss, SPI_SH_RSTF, SPI_SH_CR2);
}