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
struct ihex_binrec {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIIRAVE_CMD_DOWNLOAD_END ; 
 int /*<<< orphan*/  ZIIRAVE_CMD_DOWNLOAD_START ; 
 int /*<<< orphan*/  ZIIRAVE_CMD_JUMP_TO_BOOTLOADER ; 
 int /*<<< orphan*/  ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC ; 
 int /*<<< orphan*/  ZIIRAVE_CMD_RESET_PROCESSOR ; 
 int /*<<< orphan*/  ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ihex_binrec* FUNC5 (struct ihex_binrec const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct watchdog_device*) ; 
 int FUNC9 (struct watchdog_device*,struct firmware const*) ; 
 int FUNC10 (struct watchdog_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct watchdog_device *wdd,
			       const struct firmware *fw)
{
	struct i2c_client *client = FUNC7(wdd->parent);
	const struct ihex_binrec *rec;
	int ret;

	ret = FUNC4(client,
					ZIIRAVE_CMD_JUMP_TO_BOOTLOADER,
					ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC);
	if (ret) {
		FUNC2(&client->dev, "Failed to jump to bootloader\n");
		return ret;
	}

	FUNC6(500);

	ret = FUNC3(client, ZIIRAVE_CMD_DOWNLOAD_START);
	if (ret) {
		FUNC2(&client->dev, "Failed to start download\n");
		return ret;
	}

	ret = FUNC8(wdd);
	if (ret) {
		FUNC2(&client->dev, "No ACK for start download\n");
		return ret;
	}

	FUNC6(500);

	for (rec = (void *)fw->data; rec; rec = FUNC5(rec)) {
		ret = FUNC10(wdd, FUNC1(rec->addr),
					     rec->data, FUNC0(rec->len));
		if (ret)
			return ret;
	}

	/*
	 * Finish firmware download process by sending a zero length
	 * payload
	 */
	ret = FUNC10(wdd, 0, NULL, 0);
	if (ret) {
		FUNC2(&client->dev, "Failed to send EMPTY packet: %d\n", ret);
		return ret;
	}

	/* This sleep seems to be required */
	FUNC6(20);

	/* Start firmware verification */
	ret = FUNC9(wdd, fw);
	if (ret) {
		FUNC2(&client->dev,
			"Failed to verify firmware: %d\n", ret);
		return ret;
	}

	/* End download operation */
	ret = FUNC3(client, ZIIRAVE_CMD_DOWNLOAD_END);
	if (ret) {
		FUNC2(&client->dev,
			"Failed to end firmware download: %d\n", ret);
		return ret;
	}

	/* Reset the processor */
	ret = FUNC4(client,
					ZIIRAVE_CMD_RESET_PROCESSOR,
					ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC);
	if (ret) {
		FUNC2(&client->dev,
			"Failed to reset the watchdog: %d\n", ret);
		return ret;
	}

	FUNC6(500);

	return 0;
}