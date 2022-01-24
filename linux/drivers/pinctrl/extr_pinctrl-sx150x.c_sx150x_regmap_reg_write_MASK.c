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
typedef  unsigned int u8 ;
struct sx150x_pinctrl {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,unsigned int,unsigned int const) ; 
 unsigned int FUNC1 (struct sx150x_pinctrl*,unsigned int,unsigned int) ; 
 int FUNC2 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC3(void *context, unsigned int reg,
				   unsigned int val)
{
	int ret, n;
	struct sx150x_pinctrl *pctl = context;
	struct i2c_client *i2c = pctl->client;
	const int width = FUNC2(pctl, reg);

	val = FUNC1(pctl, reg, val);

	n = (width - 1) & ~7;
	do {
		const u8 byte = (val >> n) & 0xff;

		ret = FUNC0(i2c, reg, byte);
		if (ret < 0)
			return ret;

		reg++;
		n -= 8;
	} while (n >= 0);

	return 0;
}