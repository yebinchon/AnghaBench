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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct watchdog_device {int /*<<< orphan*/  parent; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  ZIIRAVE_CMD_DOWNLOAD_SET_READ_ADDR ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd, u32 addr)
{
	struct i2c_client *client = FUNC2(wdd->parent);
	const u16 addr16 = (u16)addr / 2;
	u8 address[2];

	FUNC1(addr16, address);

	return FUNC0(client,
					  ZIIRAVE_CMD_DOWNLOAD_SET_READ_ADDR,
					  sizeof(address), address);
}