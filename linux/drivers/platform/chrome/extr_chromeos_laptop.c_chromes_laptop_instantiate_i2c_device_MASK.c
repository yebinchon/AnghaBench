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
struct i2c_client {int /*<<< orphan*/  addr; } ;
struct i2c_board_info {unsigned short const addr; int /*<<< orphan*/  member_0; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned short const) ; 
 unsigned short const I2C_CLIENT_END ; 
 struct i2c_client* FUNC1 (struct i2c_adapter*,struct i2c_board_info*) ; 
 struct i2c_client* FUNC2 (struct i2c_adapter*,struct i2c_board_info*,unsigned short const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned short const,...) ; 

__attribute__((used)) static struct i2c_client *
FUNC5(struct i2c_adapter *adapter,
				      struct i2c_board_info *info,
				      unsigned short alt_addr)
{
	const unsigned short addr_list[] = { info->addr, I2C_CLIENT_END };
	struct i2c_client *client;

	/*
	 * Add the i2c device. If we can't detect it at the primary
	 * address we scan secondary addresses. In any case the client
	 * structure gets assigned primary address.
	 */
	client = FUNC2(adapter, info, addr_list, NULL);
	if (!client && alt_addr) {
		struct i2c_board_info dummy_info = {
			FUNC0("dummy", info->addr),
		};
		const unsigned short alt_addr_list[] = {
			alt_addr, I2C_CLIENT_END
		};
		struct i2c_client *dummy;

		dummy = FUNC2(adapter, &dummy_info,
					      alt_addr_list, NULL);
		if (dummy) {
			FUNC4("%d-%02x is probed at %02x\n",
				 adapter->nr, info->addr, dummy->addr);
			FUNC3(dummy);
			client = FUNC1(adapter, info);
		}
	}

	if (!client)
		FUNC4("failed to register device %d-%02x\n",
			 adapter->nr, info->addr);
	else
		FUNC4("added i2c device %d-%02x\n",
			 adapter->nr, info->addr);

	return client;
}