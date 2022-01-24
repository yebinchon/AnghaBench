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
typedef  int /*<<< orphan*/  trans_delay ;
typedef  int /*<<< orphan*/  trans ;
struct spi_transfer {scalar_t__* rx_buf; int len; int cs_change; int /*<<< orphan*/  tx_buf; scalar_t__ delay_usecs; } ;
struct spi_message {int dummy; } ;
struct ec_host_response {int data_len; int /*<<< orphan*/  result; } ;
struct cros_ec_spi {unsigned long last_transfer_ns; TYPE_1__* spi; scalar_t__ start_of_msg_delay; } ;
struct cros_ec_device {int /*<<< orphan*/  dev; scalar_t__* din; int /*<<< orphan*/  dout; struct cros_ec_spi* priv; } ;
struct cros_ec_command {int insize; scalar_t__ command; scalar_t__* data; int /*<<< orphan*/  result; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADMSG ; 
 scalar_t__ EC_CMD_REBOOT_EC ; 
 int /*<<< orphan*/  EC_REBOOT_DELAY_MS ; 
 scalar_t__ EC_SPI_NOT_READY ; 
 scalar_t__ EC_SPI_PAST_END ; 
 unsigned long EC_SPI_RECOVERY_TIME_NS ; 
 scalar_t__ EC_SPI_RX_BAD_DATA ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int FUNC1 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int FUNC2 (struct cros_ec_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 unsigned long FUNC6 () ; 
 scalar_t__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 
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
	struct ec_host_response *response;
	struct cros_ec_spi *ec_spi = ec_dev->priv;
	struct spi_transfer trans, trans_delay;
	struct spi_message msg;
	int i, len;
	u8 *ptr;
	u8 *rx_buf;
	u8 sum;
	u8 rx_byte;
	int ret = 0, final_ret;
	unsigned long delay;

	len = FUNC1(ec_dev, ec_msg);
	FUNC3(ec_dev->dev, "prepared, len=%d\n", len);

	/* If it's too soon to do another transaction, wait */
	delay = FUNC6() - ec_spi->last_transfer_ns;
	if (delay < EC_SPI_RECOVERY_TIME_NS)
		FUNC11(EC_SPI_RECOVERY_TIME_NS - delay);

	rx_buf = FUNC7(len, GFP_KERNEL);
	if (!rx_buf)
		return -ENOMEM;

	FUNC12(ec_spi->spi->master);

	/*
	 * Leave a gap between CS assertion and clocking of data to allow the
	 * EC time to wakeup.
	 */
	FUNC15(&msg);
	if (ec_spi->start_of_msg_delay) {
		FUNC9(&trans_delay, 0, sizeof(trans_delay));
		trans_delay.delay_usecs = ec_spi->start_of_msg_delay;
		FUNC14(&trans_delay, &msg);
	}

	/* Transmit phase - send our message */
	FUNC9(&trans, 0, sizeof(trans));
	trans.tx_buf = ec_dev->dout;
	trans.rx_buf = rx_buf;
	trans.len = len;
	trans.cs_change = 1;
	FUNC14(&trans, &msg);
	ret = FUNC16(ec_spi->spi, &msg);

	/* Get the response */
	if (!ret) {
		/* Verify that EC can process command */
		for (i = 0; i < len; i++) {
			rx_byte = rx_buf[i];
			/*
			 * Seeing the PAST_END, RX_BAD_DATA, or NOT_READY
			 * markers are all signs that the EC didn't fully
			 * receive our command. e.g., if the EC is flashing
			 * itself, it can't respond to any commands and instead
			 * clocks out EC_SPI_PAST_END from its SPI hardware
			 * buffer. Similar occurrences can happen if the AP is
			 * too slow to clock out data after asserting CS -- the
			 * EC will abort and fill its buffer with
			 * EC_SPI_RX_BAD_DATA.
			 *
			 * In all cases, these errors should be safe to retry.
			 * Report -EAGAIN and let the caller decide what to do
			 * about that.
			 */
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
				ec_msg->insize + sizeof(*response));
	else if (ret != -EAGAIN)
		FUNC4(ec_dev->dev, "spi transfer failed: %d\n", ret);

	final_ret = FUNC17(ec_dev);

	FUNC13(ec_spi->spi->master);

	if (!ret)
		ret = final_ret;
	if (ret < 0)
		goto exit;

	ptr = ec_dev->din;

	/* check response error code */
	response = (struct ec_host_response *)ptr;
	ec_msg->result = response->result;

	ret = FUNC0(ec_dev, ec_msg);
	if (ret)
		goto exit;

	len = response->data_len;
	sum = 0;
	if (len > ec_msg->insize) {
		FUNC4(ec_dev->dev, "packet too long (%d bytes, expected %d)",
			len, ec_msg->insize);
		ret = -EMSGSIZE;
		goto exit;
	}

	for (i = 0; i < sizeof(*response); i++)
		sum += ptr[i];

	/* copy response packet payload and compute checksum */
	FUNC8(ec_msg->data, ptr + sizeof(*response), len);
	for (i = 0; i < len; i++)
		sum += ec_msg->data[i];

	if (sum) {
		FUNC4(ec_dev->dev,
			"bad packet checksum, calculated %x\n",
			sum);
		ret = -EBADMSG;
		goto exit;
	}

	ret = len;
exit:
	FUNC5(rx_buf);
	if (ec_msg->command == EC_CMD_REBOOT_EC)
		FUNC10(EC_REBOOT_DELAY_MS);

	return ret;
}