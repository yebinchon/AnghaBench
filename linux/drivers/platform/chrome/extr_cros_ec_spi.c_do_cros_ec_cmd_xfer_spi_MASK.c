#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  trans ;
struct spi_transfer {scalar_t__* tx_buf; scalar_t__* rx_buf; int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct cros_ec_spi {unsigned long last_transfer_ns; TYPE_1__* spi; } ;
struct cros_ec_device {scalar_t__* dout; int /*<<< orphan*/  dev; scalar_t__* din; struct cros_ec_spi* priv; } ;
struct cros_ec_command {int insize; scalar_t__ command; scalar_t__* data; scalar_t__ result; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADMSG ; 
 scalar_t__ EC_CMD_REBOOT_EC ; 
 scalar_t__ EC_MSG_TX_PROTO_BYTES ; 
 int /*<<< orphan*/  EC_REBOOT_DELAY_MS ; 
 scalar_t__ EC_SPI_NOT_READY ; 
 scalar_t__ EC_SPI_PAST_END ; 
 unsigned long EC_SPI_RECOVERY_TIME_NS ; 
 scalar_t__ EC_SPI_RX_BAD_DATA ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int FUNC1 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int FUNC2 (struct cros_ec_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 unsigned long FUNC7 () ; 
 scalar_t__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_message*) ; 
 int FUNC16 (TYPE_1__*,struct spi_message*) ; 
 int FUNC17 (struct cros_ec_device*) ; 

__attribute__((used)) static int FUNC18(struct cros_ec_device *ec_dev,
				   struct cros_ec_command *ec_msg)
{
	struct cros_ec_spi *ec_spi = ec_dev->priv;
	struct spi_transfer trans;
	struct spi_message msg;
	int i, len;
	u8 *ptr;
	u8 *rx_buf;
	u8 rx_byte;
	int sum;
	int ret = 0, final_ret;
	unsigned long delay;

	len = FUNC1(ec_dev, ec_msg);
	FUNC4(ec_dev->dev, "prepared, len=%d\n", len);

	/* If it's too soon to do another transaction, wait */
	delay = FUNC7() - ec_spi->last_transfer_ns;
	if (delay < EC_SPI_RECOVERY_TIME_NS)
		FUNC11(EC_SPI_RECOVERY_TIME_NS - delay);

	rx_buf = FUNC8(len, GFP_KERNEL);
	if (!rx_buf)
		return -ENOMEM;

	FUNC12(ec_spi->spi->master);

	/* Transmit phase - send our message */
	FUNC3(ec_dev->dev, "out", ec_dev->dout, len);
	FUNC9(&trans, 0, sizeof(trans));
	trans.tx_buf = ec_dev->dout;
	trans.rx_buf = rx_buf;
	trans.len = len;
	trans.cs_change = 1;
	FUNC15(&msg);
	FUNC14(&trans, &msg);
	ret = FUNC16(ec_spi->spi, &msg);

	/* Get the response */
	if (!ret) {
		/* Verify that EC can process command */
		for (i = 0; i < len; i++) {
			rx_byte = rx_buf[i];
			/* See comments in cros_ec_pkt_xfer_spi() */
			if (rx_byte == EC_SPI_PAST_END  ||
			    rx_byte == EC_SPI_RX_BAD_DATA ||
			    rx_byte == EC_SPI_NOT_READY) {
				ret = -EAGAIN;
				break;
			}
		}
	}

	if (!ret)
		ret = FUNC2(ec_dev,
				ec_msg->insize + EC_MSG_TX_PROTO_BYTES);
	else if (ret != -EAGAIN)
		FUNC5(ec_dev->dev, "spi transfer failed: %d\n", ret);

	final_ret = FUNC17(ec_dev);

	FUNC13(ec_spi->spi->master);

	if (!ret)
		ret = final_ret;
	if (ret < 0)
		goto exit;

	ptr = ec_dev->din;

	/* check response error code */
	ec_msg->result = ptr[0];
	ret = FUNC0(ec_dev, ec_msg);
	if (ret)
		goto exit;

	len = ptr[1];
	sum = ptr[0] + ptr[1];
	if (len > ec_msg->insize) {
		FUNC5(ec_dev->dev, "packet too long (%d bytes, expected %d)",
			len, ec_msg->insize);
		ret = -ENOSPC;
		goto exit;
	}

	/* copy response packet payload and compute checksum */
	for (i = 0; i < len; i++) {
		sum += ptr[i + 2];
		if (ec_msg->insize)
			ec_msg->data[i] = ptr[i + 2];
	}
	sum &= 0xff;

	FUNC3(ec_dev->dev, "in", ptr, len + 3);

	if (sum != ptr[len + 2]) {
		FUNC5(ec_dev->dev,
			"bad packet checksum, expected %02x, got %02x\n",
			sum, ptr[len + 2]);
		ret = -EBADMSG;
		goto exit;
	}

	ret = len;
exit:
	FUNC6(rx_buf);
	if (ec_msg->command == EC_CMD_REBOOT_EC)
		FUNC10(EC_REBOOT_DELAY_MS);

	return ret;
}