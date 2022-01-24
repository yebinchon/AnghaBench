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
struct wilc_sdio {int block_size; } ;
struct wilc {struct wilc_sdio* bus_data; int /*<<< orphan*/  dev; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct sdio_cmd53 {int read_write; int function; int address; int block_mode; int increment; int count; int block_size; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct sdio_func* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wilc*,struct sdio_cmd53*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc*,int) ; 

__attribute__((used)) static int FUNC4(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
{
	struct sdio_func *func = FUNC1(wilc->dev);
	struct wilc_sdio *sdio_priv = wilc->bus_data;
	u32 block_size = sdio_priv->block_size;
	struct sdio_cmd53 cmd;
	int nblk, nleft, ret;

	cmd.read_write = 1;
	if (addr > 0) {
		/**
		 *      has to be word aligned...
		 **/
		if (size & 0x3) {
			size += 4;
			size &= ~0x3;
		}

		/**
		 *      func 0 access
		 **/
		cmd.function = 0;
		cmd.address = 0x10f;
	} else {
		/**
		 *      has to be word aligned...
		 **/
		if (size & 0x3) {
			size += 4;
			size &= ~0x3;
		}

		/**
		 *      func 1 access
		 **/
		cmd.function = 1;
		cmd.address = 0;
	}

	nblk = size / block_size;
	nleft = size % block_size;

	if (nblk > 0) {
		cmd.block_mode = 1;
		cmd.increment = 1;
		cmd.count = nblk;
		cmd.buffer = buf;
		cmd.block_size = block_size;
		if (addr > 0) {
			if (!FUNC3(wilc, addr))
				goto fail;
		}
		ret = FUNC2(wilc, &cmd);
		if (ret) {
			FUNC0(&func->dev,
				"Failed cmd53 [%x], block send...\n", addr);
			goto fail;
		}
		if (addr > 0)
			addr += nblk * block_size;
		buf += nblk * block_size;
	}

	if (nleft > 0) {
		cmd.block_mode = 0;
		cmd.increment = 1;
		cmd.count = nleft;
		cmd.buffer = buf;

		cmd.block_size = block_size;

		if (addr > 0) {
			if (!FUNC3(wilc, addr))
				goto fail;
		}
		ret = FUNC2(wilc, &cmd);
		if (ret) {
			FUNC0(&func->dev,
				"Failed cmd53 [%x], bytes send...\n", addr);
			goto fail;
		}
	}

	return 1;

fail:

	return 0;
}