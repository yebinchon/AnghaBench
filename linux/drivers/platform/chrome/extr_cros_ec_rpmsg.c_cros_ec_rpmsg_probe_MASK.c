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
struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_rpmsg {int /*<<< orphan*/  host_event_work; int /*<<< orphan*/  ept; int /*<<< orphan*/  xfer_ack; struct rpmsg_device* rpdev; } ;
struct cros_ec_device {int din_size; int dout_size; int /*<<< orphan*/  phys_name; int /*<<< orphan*/  pkt_xfer; int /*<<< orphan*/  cmd_xfer; struct cros_ec_rpmsg* priv; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cros_ec_cmd_xfer_rpmsg ; 
 int /*<<< orphan*/  cros_ec_pkt_xfer_rpmsg ; 
 int FUNC2 (struct cros_ec_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpmsg_device*) ; 
 int /*<<< orphan*/  cros_ec_rpmsg_host_event_function ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct cros_ec_device*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rpmsg_device *rpdev)
{
	struct device *dev = &rpdev->dev;
	struct cros_ec_rpmsg *ec_rpmsg;
	struct cros_ec_device *ec_dev;
	int ret;

	ec_dev = FUNC6(dev, sizeof(*ec_dev), GFP_KERNEL);
	if (!ec_dev)
		return -ENOMEM;

	ec_rpmsg = FUNC6(dev, sizeof(*ec_rpmsg), GFP_KERNEL);
	if (!ec_rpmsg)
		return -ENOMEM;

	ec_dev->dev = dev;
	ec_dev->priv = ec_rpmsg;
	ec_dev->cmd_xfer = cros_ec_cmd_xfer_rpmsg;
	ec_dev->pkt_xfer = cros_ec_pkt_xfer_rpmsg;
	ec_dev->phys_name = FUNC4(&rpdev->dev);
	ec_dev->din_size = sizeof(struct ec_host_response) +
			   sizeof(struct ec_response_get_protocol_info);
	ec_dev->dout_size = sizeof(struct ec_host_request);
	FUNC5(dev, ec_dev);

	ec_rpmsg->rpdev = rpdev;
	FUNC7(&ec_rpmsg->xfer_ack);
	FUNC0(&ec_rpmsg->host_event_work,
		  cros_ec_rpmsg_host_event_function);

	ec_rpmsg->ept = FUNC3(rpdev);
	if (!ec_rpmsg->ept)
		return -ENOMEM;

	ret = FUNC2(ec_dev);
	if (ret < 0) {
		FUNC8(ec_rpmsg->ept);
		FUNC1(&ec_rpmsg->host_event_work);
		return ret;
	}

	return 0;
}