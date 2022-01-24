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
struct ov9740_reg {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client,
				  const struct ov9740_reg *regarray,
				  int regarraylen)
{
	int i;
	int ret;

	for (i = 0; i < regarraylen; i++) {
		ret = FUNC0(client,
				       regarray[i].reg, regarray[i].val);
		if (ret < 0)
			return ret;
	}

	return 0;
}