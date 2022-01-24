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
typedef  scalar_t__ u8 ;
struct ec_host_response {int data_len; int /*<<< orphan*/  result; } ;
struct cros_ec_rpmsg {int /*<<< orphan*/  xfer_ack; int /*<<< orphan*/  ept; } ;
struct cros_ec_device {int /*<<< orphan*/  dev; scalar_t__* din; int /*<<< orphan*/  dout; struct cros_ec_rpmsg* priv; } ;
struct cros_ec_command {int insize; scalar_t__ command; int /*<<< orphan*/  data; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int EBADMSG ; 
 scalar_t__ EC_CMD_REBOOT_EC ; 
 int /*<<< orphan*/  EC_MSG_TIMEOUT_MS ; 
 int /*<<< orphan*/  EC_REBOOT_DELAY_MS ; 
 int EIO ; 
 int EMSGSIZE ; 
 int FUNC0 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int FUNC1 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct cros_ec_device *ec_dev,
				  struct cros_ec_command *ec_msg)
{
	struct cros_ec_rpmsg *ec_rpmsg = ec_dev->priv;
	struct ec_host_response *response;
	unsigned long timeout;
	int len;
	int ret;
	u8 sum;
	int i;

	ec_msg->result = 0;
	len = FUNC1(ec_dev, ec_msg);
	FUNC2(ec_dev->dev, "prepared, len=%d\n", len);

	FUNC7(&ec_rpmsg->xfer_ack);
	ret = FUNC8(ec_rpmsg->ept, ec_dev->dout, len);
	if (ret) {
		FUNC3(ec_dev->dev, "rpmsg send failed\n");
		return ret;
	}

	timeout = FUNC5(EC_MSG_TIMEOUT_MS);
	ret = FUNC9(&ec_rpmsg->xfer_ack, timeout);
	if (!ret) {
		FUNC3(ec_dev->dev, "rpmsg send timeout\n");
		return -EIO;
	}

	/* check response error code */
	response = (struct ec_host_response *)ec_dev->din;
	ec_msg->result = response->result;

	ret = FUNC0(ec_dev, ec_msg);
	if (ret)
		goto exit;

	if (response->data_len > ec_msg->insize) {
		FUNC3(ec_dev->dev, "packet too long (%d bytes, expected %d)",
			response->data_len, ec_msg->insize);
		ret = -EMSGSIZE;
		goto exit;
	}

	/* copy response packet payload and compute checksum */
	FUNC4(ec_msg->data, ec_dev->din + sizeof(*response),
	       response->data_len);

	sum = 0;
	for (i = 0; i < sizeof(*response) + response->data_len; i++)
		sum += ec_dev->din[i];

	if (sum) {
		FUNC3(ec_dev->dev, "bad packet checksum, calculated %x\n",
			sum);
		ret = -EBADMSG;
		goto exit;
	}

	ret = response->data_len;
exit:
	if (ec_msg->command == EC_CMD_REBOOT_EC)
		FUNC6(EC_REBOOT_DELAY_MS);

	return ret;
}