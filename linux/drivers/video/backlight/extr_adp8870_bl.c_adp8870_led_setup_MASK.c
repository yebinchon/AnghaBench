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
struct adp8870_led {int id; int flags; struct i2c_client* client; } ;

/* Variables and functions */
 scalar_t__ ADP8870_ISC1 ; 
 int /*<<< orphan*/  ADP8870_ISCC ; 
 int /*<<< orphan*/  ADP8870_ISCT1 ; 
 int /*<<< orphan*/  ADP8870_ISCT2 ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adp8870_led *led)
{
	struct i2c_client *client = led->client;
	int ret = 0;

	ret = FUNC1(client, ADP8870_ISC1 + led->id - 1, 0);
	if (ret)
		return ret;

	ret = FUNC0(client, ADP8870_ISCC, 1 << (led->id - 1));
	if (ret)
		return ret;

	if (led->id > 4)
		ret = FUNC0(client, ADP8870_ISCT1,
				(led->flags & 0x3) << ((led->id - 5) * 2));
	else
		ret = FUNC0(client, ADP8870_ISCT2,
				(led->flags & 0x3) << ((led->id - 1) * 2));

	return ret;
}