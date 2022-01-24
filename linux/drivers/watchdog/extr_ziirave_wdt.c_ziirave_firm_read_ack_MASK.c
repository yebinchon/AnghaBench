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
struct watchdog_device {int /*<<< orphan*/  parent; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ZIIRAVE_FIRM_DOWNLOAD_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct i2c_client *client = FUNC2(wdd->parent);
	int ret;

	ret = FUNC1(client);
	if (ret < 0) {
		FUNC0(&client->dev, "Failed to read status byte\n");
		return ret;
	}

	return ret == ZIIRAVE_FIRM_DOWNLOAD_ACK ? 0 : -EIO;
}