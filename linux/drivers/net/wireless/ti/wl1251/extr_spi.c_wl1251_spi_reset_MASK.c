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
struct spi_transfer {int len; struct spi_transfer* tx_buf; } ;
typedef  struct spi_transfer u8 ;
typedef  int /*<<< orphan*/  t ;
struct wl1251 {int dummy; } ;
struct spi_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_SPI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WSPI_INIT_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 struct spi_transfer* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct spi_transfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1251*) ; 

__attribute__((used)) static void FUNC9(struct wl1251 *wl)
{
	u8 *cmd;
	struct spi_transfer t;
	struct spi_message m;

	cmd = FUNC1(WSPI_INIT_CMD_LEN, GFP_KERNEL);
	if (!cmd) {
		FUNC7("could not allocate cmd for spi reset");
		return;
	}

	FUNC2(&t, 0, sizeof(t));
	FUNC4(&m);

	FUNC2(cmd, 0xff, WSPI_INIT_CMD_LEN);

	t.tx_buf = cmd;
	t.len = WSPI_INIT_CMD_LEN;
	FUNC3(&t, &m);

	FUNC5(FUNC8(wl), &m);

	FUNC6(DEBUG_SPI, "spi reset -> ", cmd, WSPI_INIT_CMD_LEN);

	FUNC0(cmd);
}