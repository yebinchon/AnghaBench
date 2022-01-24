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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  t ;
struct wl1251 {size_t buffer_cmd; } ;
struct spi_transfer {size_t* tx_buf; int len; } ;
struct spi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_SPI ; 
 int WSPI_CMD_BYTE_ADDR ; 
 size_t WSPI_CMD_BYTE_LENGTH ; 
 size_t WSPI_CMD_BYTE_LENGTH_OFFSET ; 
 size_t WSPI_CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1251*) ; 

__attribute__((used)) static void FUNC6(struct wl1251 *wl, int addr, void *buf,
			     size_t len)
{
	struct spi_transfer t[2];
	struct spi_message m;
	u32 *cmd;

	cmd = &wl->buffer_cmd;

	*cmd = 0;
	*cmd |= WSPI_CMD_WRITE;
	*cmd |= (len << WSPI_CMD_BYTE_LENGTH_OFFSET) & WSPI_CMD_BYTE_LENGTH;
	*cmd |= addr & WSPI_CMD_BYTE_ADDR;

	FUNC2(&m);
	FUNC0(t, 0, sizeof(t));

	t[0].tx_buf = cmd;
	t[0].len = sizeof(*cmd);
	FUNC1(&t[0], &m);

	t[1].tx_buf = buf;
	t[1].len = len;
	FUNC1(&t[1], &m);

	FUNC3(FUNC5(wl), &m);

	FUNC4(DEBUG_SPI, "spi_write cmd -> ", cmd, sizeof(*cmd));
	FUNC4(DEBUG_SPI, "spi_write buf -> ", buf, len);
}