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
struct isl12026 {int /*<<< orphan*/  nvm_client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct isl12026* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct isl12026 *priv = FUNC0(client);

	FUNC1(priv->nvm_client);
	return 0;
}