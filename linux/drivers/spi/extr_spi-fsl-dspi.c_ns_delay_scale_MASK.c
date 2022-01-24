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
typedef  unsigned long u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int SPI_CTAR_SCALE_BITS ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long) ; 

__attribute__((used)) static void FUNC3(char *psc, char *sc, int delay_ns,
			   unsigned long clkrate)
{
	int scale_needed, scale, minscale = INT_MAX;
	int pscale_tbl[4] = {1, 3, 5, 7};
	u32 remainder;
	int i, j;

	scale_needed = FUNC1((u64)delay_ns * clkrate, NSEC_PER_SEC,
				   &remainder);
	if (remainder)
		scale_needed++;

	for (i = 0; i < FUNC0(pscale_tbl); i++)
		for (j = 0; j <= SPI_CTAR_SCALE_BITS; j++) {
			scale = pscale_tbl[i] * (2 << j);
			if (scale >= scale_needed) {
				if (scale < minscale) {
					minscale = scale;
					*psc = i;
					*sc = j;
				}
				break;
			}
		}

	if (minscale == INT_MAX) {
		FUNC2("Cannot find correct scale values for %dns delay at clkrate %ld, using max prescaler value",
			delay_ns, clkrate);
		*psc = FUNC0(pscale_tbl) - 1;
		*sc = SPI_CTAR_SCALE_BITS;
	}
}