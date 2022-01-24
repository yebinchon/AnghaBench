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
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; int cs_change; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char ST95HF_COMMAND_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (struct spi_device*,struct spi_message*) ; 

int FUNC7(struct st95hf_spi_context *spicontext,
			     unsigned char *receivebuff)
{
	int len = 0;
	struct spi_transfer tx_takedata;
	struct spi_message m;
	struct spi_device *spidev = spicontext->spidev;
	unsigned char readdata_cmd = ST95HF_COMMAND_RECEIVE;
	struct spi_transfer t[2] = {
		{.tx_buf = &readdata_cmd, .len = 1,},
		{.rx_buf = receivebuff, .len = 2, .cs_change = 1,},
	};

	int ret = 0;

	FUNC1(&tx_takedata, 0x0, sizeof(struct spi_transfer));

	FUNC2(&spicontext->spi_lock);

	/* First spi transfer to know the length of valid data */
	FUNC5(&m);
	FUNC4(&t[0], &m);
	FUNC4(&t[1], &m);

	ret = FUNC6(spidev, &m);
	if (ret) {
		FUNC0(&spidev->dev, "spi_recv_resp, data length error = %d\n",
			ret);
		FUNC3(&spicontext->spi_lock);
		return ret;
	}

	/* As 2 bytes are already read */
	len = 2;

	/* Support of long frame */
	if (receivebuff[0] & 0x60)
		len += (((receivebuff[0] & 0x60) >> 5) << 8) | receivebuff[1];
	else
		len += receivebuff[1];

	/* Now make a transfer to read only relevant bytes */
	tx_takedata.rx_buf = &receivebuff[2];
	tx_takedata.len = len - 2;

	FUNC5(&m);
	FUNC4(&tx_takedata, &m);

	ret = FUNC6(spidev, &m);

	FUNC3(&spicontext->spi_lock);
	if (ret) {
		FUNC0(&spidev->dev, "spi_recv_resp, data read error = %d\n",
			ret);
		return ret;
	}

	return len;
}