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
typedef  int u16 ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_BASIC_RATE_TBL ; 
 int CR_RATES_80211B ; 
 int CR_RATES_80211G ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zd_chip*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct zd_chip *chip, u16 cr_rates)
{
	int r;

	if (cr_rates & ~(CR_RATES_80211B|CR_RATES_80211G))
		return -EINVAL;

	FUNC0(&chip->mutex);
	r = FUNC2(chip, cr_rates, CR_BASIC_RATE_TBL);
	FUNC1(&chip->mutex);
	return r;
}