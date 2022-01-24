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
struct hdm_i2c {int /*<<< orphan*/  most_iface; } ;

/* Variables and functions */
 struct hdm_i2c* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdm_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct hdm_i2c *dev = FUNC0(client);

	FUNC2(&dev->most_iface);
	FUNC1(dev);

	return 0;
}