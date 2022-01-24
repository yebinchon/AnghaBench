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
typedef  int /*<<< orphan*/  u16 ;
struct fsl_dspi {int /*<<< orphan*/  regmap_pushr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUSHR_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fsl_dspi *dspi, u16 txdata)
{
	FUNC0(dspi->regmap_pushr, PUSHR_TX, txdata);
}