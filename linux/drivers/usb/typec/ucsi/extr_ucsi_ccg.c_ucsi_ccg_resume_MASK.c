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
struct ucsi_ccg {int /*<<< orphan*/  ucsi; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ucsi_ccg* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct i2c_client *client = FUNC1(dev);
	struct ucsi_ccg *uc = FUNC0(client);

	return FUNC2(uc->ucsi);
}