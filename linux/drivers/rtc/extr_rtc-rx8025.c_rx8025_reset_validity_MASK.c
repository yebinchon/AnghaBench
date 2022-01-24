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
 int RX8025_BIT_CTRL2_PON ; 
 int RX8025_BIT_CTRL2_VDET ; 
 int RX8025_BIT_CTRL2_XST ; 
 int /*<<< orphan*/  RX8025_REG_CTRL2 ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int ctrl2 = FUNC0(client, RX8025_REG_CTRL2);

	if (ctrl2 < 0)
		return ctrl2;

	ctrl2 &= ~(RX8025_BIT_CTRL2_PON | RX8025_BIT_CTRL2_VDET);

	return FUNC1(client, RX8025_REG_CTRL2,
				ctrl2 | RX8025_BIT_CTRL2_XST);
}