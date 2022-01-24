#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bq24735 {TYPE_1__* client; scalar_t__ status_gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ24735_CHG_OPT ; 
 int BQ24735_CHG_OPT_AC_PRESENT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct bq24735 *charger)
{
	if (charger->status_gpio) {
		return !FUNC2(charger->status_gpio);
	} else {
		int ac = 0;

		ac = FUNC0(charger->client, BQ24735_CHG_OPT);
		if (ac < 0) {
			FUNC1(&charger->client->dev,
				"Failed to read charger options : %d\n",
				ac);
			return false;
		}
		return (ac & BQ24735_CHG_OPT_AC_PRESENT) ? true : false;
	}

	return false;
}