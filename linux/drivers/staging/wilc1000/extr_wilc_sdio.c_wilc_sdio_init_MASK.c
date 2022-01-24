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
typedef  int u32 ;
struct wilc_sdio {int has_thrpt_enh3; int /*<<< orphan*/  block_size; int /*<<< orphan*/  irq_gpio; } ;
struct wilc {int /*<<< orphan*/  dev_irq_num; struct wilc_sdio* bus_data; int /*<<< orphan*/  dev; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_cmd52 {int read_write; int raw; int address; int data; scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  WILC_SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct sdio_func* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc*,struct sdio_cmd52*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wilc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct wilc *wilc, bool resume)
{
	struct sdio_func *func = FUNC2(wilc->dev);
	struct wilc_sdio *sdio_priv = wilc->bus_data;
	struct sdio_cmd52 cmd;
	int loop, ret;
	u32 chipid;

	if (!resume)
		sdio_priv->irq_gpio = wilc->dev_irq_num;

	/**
	 *      function 0 csa enable
	 **/
	cmd.read_write = 1;
	cmd.function = 0;
	cmd.raw = 1;
	cmd.address = 0x100;
	cmd.data = 0x80;
	ret = FUNC3(wilc, &cmd);
	if (ret) {
		FUNC0(&func->dev, "Fail cmd 52, enable csa...\n");
		goto fail;
	}

	/**
	 *      function 0 block size
	 **/
	if (!FUNC5(wilc, WILC_SDIO_BLOCK_SIZE)) {
		FUNC0(&func->dev, "Fail cmd 52, set func 0 block size...\n");
		goto fail;
	}
	sdio_priv->block_size = WILC_SDIO_BLOCK_SIZE;

	/**
	 *      enable func1 IO
	 **/
	cmd.read_write = 1;
	cmd.function = 0;
	cmd.raw = 1;
	cmd.address = 0x2;
	cmd.data = 0x2;
	ret = FUNC3(wilc, &cmd);
	if (ret) {
		FUNC0(&func->dev,
			"Fail cmd 52, set IOE register...\n");
		goto fail;
	}

	/**
	 *      make sure func 1 is up
	 **/
	cmd.read_write = 0;
	cmd.function = 0;
	cmd.raw = 0;
	cmd.address = 0x3;
	loop = 3;
	do {
		cmd.data = 0;
		ret = FUNC3(wilc, &cmd);
		if (ret) {
			FUNC0(&func->dev,
				"Fail cmd 52, get IOR register...\n");
			goto fail;
		}
		if (cmd.data == 0x2)
			break;
	} while (loop--);

	if (loop <= 0) {
		FUNC0(&func->dev, "Fail func 1 is not ready...\n");
		goto fail;
	}

	/**
	 *      func 1 is ready, set func 1 block size
	 **/
	if (!FUNC6(wilc, WILC_SDIO_BLOCK_SIZE)) {
		FUNC0(&func->dev, "Fail set func 1 block size...\n");
		goto fail;
	}

	/**
	 *      func 1 interrupt enable
	 **/
	cmd.read_write = 1;
	cmd.function = 0;
	cmd.raw = 1;
	cmd.address = 0x4;
	cmd.data = 0x3;
	ret = FUNC3(wilc, &cmd);
	if (ret) {
		FUNC0(&func->dev, "Fail cmd 52, set IEN register...\n");
		goto fail;
	}

	/**
	 *      make sure can read back chip id correctly
	 **/
	if (!resume) {
		if (!FUNC4(wilc, 0x1000, &chipid)) {
			FUNC0(&func->dev, "Fail cmd read chip id...\n");
			goto fail;
		}
		FUNC0(&func->dev, "chipid (%08x)\n", chipid);
		if ((chipid & 0xfff) > 0x2a0)
			sdio_priv->has_thrpt_enh3 = 1;
		else
			sdio_priv->has_thrpt_enh3 = 0;
		FUNC1(&func->dev, "has_thrpt_enh3 = %d...\n",
			 sdio_priv->has_thrpt_enh3);
	}

	return 1;

fail:

	return 0;
}