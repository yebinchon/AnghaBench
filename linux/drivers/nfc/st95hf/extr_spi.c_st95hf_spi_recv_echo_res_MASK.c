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
struct st95hf_spi_context {int /*<<< orphan*/  spi_lock; struct spi_device* spidev; } ;
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char ST95HF_COMMAND_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (struct spi_device*,struct spi_message*) ; 

int FUNC6(struct st95hf_spi_context *spicontext,
			     unsigned char *receivebuff)
{
	unsigned char readdata_cmd = ST95HF_COMMAND_RECEIVE;
	struct spi_transfer t[2] = {
		{.tx_buf = &readdata_cmd, .len = 1,},
		{.rx_buf = receivebuff, .len = 1,},
	};
	struct spi_message m;
	struct spi_device *spidev = spicontext->spidev;
	int ret = 0;

	FUNC1(&spicontext->spi_lock);

	FUNC4(&m);
	FUNC3(&t[0], &m);
	FUNC3(&t[1], &m);
	ret = FUNC5(spidev, &m);

	FUNC2(&spicontext->spi_lock);

	if (ret)
		FUNC0(&spidev->dev, "recv_echo_res, data read error = %d\n",
			ret);

	return ret;
}