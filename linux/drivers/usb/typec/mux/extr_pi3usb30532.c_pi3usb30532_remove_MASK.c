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
struct pi3usb30532 {int /*<<< orphan*/  sw; int /*<<< orphan*/  mux; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct pi3usb30532* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct pi3usb30532 *pi = FUNC0(client);

	FUNC1(pi->mux);
	FUNC2(pi->sw);
	return 0;
}