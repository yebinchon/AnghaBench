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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  t ;
struct wl12xx_spi_glue {int /*<<< orphan*/  dev; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int* tx_buf; int len; } ;
struct spi_device {int /*<<< orphan*/  mode; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HW_ACCESS_WSPI_FIXED_BUSY_LEN ; 
 int HW_ACCESS_WSPI_INIT_CMD_MASK ; 
 int /*<<< orphan*/  SPI_CS_HIGH ; 
 int /*<<< orphan*/  WSPI_INIT_CMD_CRC_LEN ; 
 int WSPI_INIT_CMD_CS ; 
 int WSPI_INIT_CMD_DIS_FIXEDBUSY ; 
 int WSPI_INIT_CMD_END ; 
 int WSPI_INIT_CMD_EN_FIXEDBUSY ; 
 int WSPI_INIT_CMD_FIXEDBUSY_LEN ; 
 int WSPI_INIT_CMD_IOD ; 
 int WSPI_INIT_CMD_IP ; 
 int WSPI_INIT_CMD_LEN ; 
 int WSPI_INIT_CMD_START ; 
 int WSPI_INIT_CMD_TX ; 
 int WSPI_INIT_CMD_WS ; 
 int WSPI_INIT_CMD_WSPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wl12xx_spi_glue* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_transfer*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct spi_transfer*) ; 
 struct spi_device* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct device *child)
{
	struct wl12xx_spi_glue *glue = FUNC3(child->parent);
	struct spi_transfer t;
	struct spi_message m;
	struct spi_device *spi = FUNC10(glue->dev);
	u8 *cmd = FUNC5(WSPI_INIT_CMD_LEN, GFP_KERNEL);

	if (!cmd) {
		FUNC2(child->parent,
			"could not allocate cmd for spi init\n");
		return;
	}

	FUNC6(&t, 0, sizeof(t));
	FUNC8(&m);

	/*
	 * Set WSPI_INIT_COMMAND
	 * the data is being send from the MSB to LSB
	 */
	cmd[0] = 0xff;
	cmd[1] = 0xff;
	cmd[2] = WSPI_INIT_CMD_START | WSPI_INIT_CMD_TX;
	cmd[3] = 0;
	cmd[4] = 0;
	cmd[5] = HW_ACCESS_WSPI_INIT_CMD_MASK << 3;
	cmd[5] |= HW_ACCESS_WSPI_FIXED_BUSY_LEN & WSPI_INIT_CMD_FIXEDBUSY_LEN;

	cmd[6] = WSPI_INIT_CMD_IOD | WSPI_INIT_CMD_IP | WSPI_INIT_CMD_CS
		| WSPI_INIT_CMD_WSPI | WSPI_INIT_CMD_WS;

	if (HW_ACCESS_WSPI_FIXED_BUSY_LEN == 0)
		cmd[6] |= WSPI_INIT_CMD_DIS_FIXEDBUSY;
	else
		cmd[6] |= WSPI_INIT_CMD_EN_FIXEDBUSY;

	cmd[7] = FUNC1(0, cmd+2, WSPI_INIT_CMD_CRC_LEN) | WSPI_INIT_CMD_END;

	/*
	 * The above is the logical order; it must actually be stored
	 * in the buffer byte-swapped.
	 */
	FUNC0((u32 *)cmd);
	FUNC0((u32 *)cmd+1);

	t.tx_buf = cmd;
	t.len = WSPI_INIT_CMD_LEN;
	FUNC7(&t, &m);

	FUNC9(FUNC10(glue->dev), &m);

	/* Send extra clocks with inverted CS (high). this is required
	 * by the wilink family in order to successfully enter WSPI mode.
	 */
	spi->mode ^= SPI_CS_HIGH;
	FUNC6(&m, 0, sizeof(m));
	FUNC8(&m);

	cmd[0] = 0xff;
	cmd[1] = 0xff;
	cmd[2] = 0xff;
	cmd[3] = 0xff;
	FUNC0((u32 *)cmd);

	t.tx_buf = cmd;
	t.len = 4;
	FUNC7(&t, &m);

	FUNC9(FUNC10(glue->dev), &m);

	/* Restore chip select configration to normal */
	spi->mode ^= SPI_CS_HIGH;
	FUNC4(cmd);
}