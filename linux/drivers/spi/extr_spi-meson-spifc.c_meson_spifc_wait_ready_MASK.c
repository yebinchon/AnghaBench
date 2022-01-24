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
struct meson_spifc {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_SLAVE ; 
 int SLAVE_TRST_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct meson_spifc *spifc)
{
	unsigned long deadline = jiffies + FUNC1(5);
	u32 data;

	do {
		FUNC2(spifc->regmap, REG_SLAVE, &data);
		if (data & SLAVE_TRST_DONE)
			return 0;
		FUNC0();
	} while (!FUNC3(jiffies, deadline));

	return -ETIMEDOUT;
}