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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 unsigned char PCF8563_BIT_AF ; 
 unsigned char PCF8563_BIT_AIE ; 
 int /*<<< orphan*/  PCF8563_REG_ST2 ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, unsigned char *en,
				  unsigned char *pen)
{
	unsigned char buf;
	int err;

	err = FUNC0(client, PCF8563_REG_ST2, 1, &buf);
	if (err)
		return err;

	if (en)
		*en = !!(buf & PCF8563_BIT_AIE);
	if (pen)
		*pen = !!(buf & PCF8563_BIT_AF);

	return 0;
}