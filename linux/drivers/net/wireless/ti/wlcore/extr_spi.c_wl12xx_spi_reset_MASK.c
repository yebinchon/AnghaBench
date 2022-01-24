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
struct wl12xx_spi_glue {int /*<<< orphan*/  dev; } ;
struct spi_message {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WSPI_INIT_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wl12xx_spi_glue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*) ; 
 struct spi_transfer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct device *child)
{
	struct wl12xx_spi_glue *glue = FUNC1(child->parent);
	u8 *cmd;
	struct spi_transfer t;
	struct spi_message m;

	cmd = FUNC3(WSPI_INIT_CMD_LEN, GFP_KERNEL);
	if (!cmd) {
		FUNC0(child->parent,
			"could not allocate cmd for spi reset\n");
		return;
	}

	FUNC4(&t, 0, sizeof(t));
	FUNC6(&m);

	FUNC4(cmd, 0xff, WSPI_INIT_CMD_LEN);

	t.tx_buf = cmd;
	t.len = WSPI_INIT_CMD_LEN;
	FUNC5(&t, &m);

	FUNC7(FUNC8(glue->dev), &m);

	FUNC2(cmd);
}