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
struct spi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_SPBRR_SPBR_BITS ; 
 int PCH_CLOCK_HZ ; 
 int PCH_MAX_SPBR ; 
 int /*<<< orphan*/  PCH_SPBRR ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct spi_master *master, u32 speed_hz)
{
	u32 n_spbr = PCH_CLOCK_HZ / (speed_hz * 2);

	/* if baud rate is less than we can support limit it */
	if (n_spbr > PCH_MAX_SPBR)
		n_spbr = PCH_MAX_SPBR;

	FUNC0(master, PCH_SPBRR, n_spbr, MASK_SPBRR_SPBR_BITS);
}