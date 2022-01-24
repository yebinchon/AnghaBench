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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ucsi_ccg {int /*<<< orphan*/  dev; struct i2c_client* client; } ;
struct i2c_msg {int flags; unsigned char* buf; scalar_t__ len; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  rab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static int FUNC9(struct ucsi_ccg *uc, u16 rab, u8 *data, u32 len)
{
	struct i2c_client *client = uc->client;
	unsigned char *buf;
	struct i2c_msg msgs[] = {
		{
			.addr	= client->addr,
			.flags  = 0x0,
		}
	};
	int status;

	buf = FUNC4(len + sizeof(rab), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC8(rab, buf);
	FUNC5(buf + sizeof(rab), data, len);

	msgs[0].len = len + sizeof(rab);
	msgs[0].buf = buf;

	FUNC6(uc->dev);
	status = FUNC2(client->adapter, msgs, FUNC0(msgs));
	if (status < 0) {
		FUNC1(uc->dev, "i2c_transfer failed %d\n", status);
		FUNC7(uc->dev);
		FUNC3(buf);
		return status;
	}

	FUNC7(uc->dev);
	FUNC3(buf);
	return 0;
}