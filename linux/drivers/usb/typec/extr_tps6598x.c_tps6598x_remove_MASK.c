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
struct tps6598x {int /*<<< orphan*/  port; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct tps6598x* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct tps6598x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct tps6598x *tps = FUNC0(client);

	FUNC1(tps, 0);
	FUNC2(tps->port);

	return 0;
}