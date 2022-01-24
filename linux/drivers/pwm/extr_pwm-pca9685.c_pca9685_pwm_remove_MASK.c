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
struct pca9685 {int /*<<< orphan*/  chip; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct pca9685* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct pca9685 *pca = FUNC0(client);
	int ret;

	ret = FUNC2(&pca->chip);
	if (ret)
		return ret;
	FUNC1(&client->dev);
	return 0;
}