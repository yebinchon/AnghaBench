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
typedef  unsigned long long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  AD9834_FREQ_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned long mclk, unsigned long fout)
{
	unsigned long long freqreg = (u64)fout * (u64)FUNC0(AD9834_FREQ_BITS);

	FUNC1(freqreg, mclk);
	return freqreg;
}