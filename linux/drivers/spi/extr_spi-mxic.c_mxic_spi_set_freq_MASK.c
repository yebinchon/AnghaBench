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
struct mxic_spi {unsigned long cur_speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mxic_spi*) ; 
 int FUNC1 (struct mxic_spi*) ; 
 int FUNC2 (struct mxic_spi*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mxic_spi *mxic, unsigned long freq)
{
	int ret;

	if (mxic->cur_speed_hz == freq)
		return 0;

	FUNC0(mxic);
	ret = FUNC2(mxic, freq);
	if (ret)
		return ret;

	ret = FUNC1(mxic);
	if (ret)
		return ret;

	mxic->cur_speed_hz = freq;

	return 0;
}