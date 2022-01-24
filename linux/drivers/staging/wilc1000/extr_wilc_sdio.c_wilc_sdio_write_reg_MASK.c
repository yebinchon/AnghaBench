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
typedef  int u32 ;
struct wilc_sdio {int /*<<< orphan*/  block_size; } ;
struct wilc {struct wilc_sdio* bus_data; int /*<<< orphan*/  dev; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_cmd53 {int read_write; int address; int increment; int count; int /*<<< orphan*/  block_size; int /*<<< orphan*/ * buffer; scalar_t__ block_mode; scalar_t__ function; } ;
struct sdio_cmd52 {int read_write; int address; int data; scalar_t__ raw; scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct sdio_func* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc*,struct sdio_cmd52*) ; 
 int FUNC4 (struct wilc*,struct sdio_cmd53*) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*,int) ; 

__attribute__((used)) static int FUNC6(struct wilc *wilc, u32 addr, u32 data)
{
	struct sdio_func *func = FUNC2(wilc->dev);
	struct wilc_sdio *sdio_priv = wilc->bus_data;
	int ret;

	FUNC0(&data);

	if (addr >= 0xf0 && addr <= 0xff) {
		struct sdio_cmd52 cmd;

		cmd.read_write = 1;
		cmd.function = 0;
		cmd.raw = 0;
		cmd.address = addr;
		cmd.data = data;
		ret = FUNC3(wilc, &cmd);
		if (ret) {
			FUNC1(&func->dev,
				"Failed cmd 52, read reg (%08x) ...\n", addr);
			goto fail;
		}
	} else {
		struct sdio_cmd53 cmd;

		/**
		 *      set the AHB address
		 **/
		if (!FUNC5(wilc, addr))
			goto fail;

		cmd.read_write = 1;
		cmd.function = 0;
		cmd.address = 0x10f;
		cmd.block_mode = 0;
		cmd.increment = 1;
		cmd.count = 4;
		cmd.buffer = (u8 *)&data;
		cmd.block_size = sdio_priv->block_size;
		ret = FUNC4(wilc, &cmd);
		if (ret) {
			FUNC1(&func->dev,
				"Failed cmd53, write reg (%08x)...\n", addr);
			goto fail;
		}
	}

	return 1;

fail:

	return 0;
}