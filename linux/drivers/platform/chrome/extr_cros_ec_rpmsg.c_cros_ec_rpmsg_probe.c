
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rpmsg_device {struct device dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_host_response {int dummy; } ;
struct ec_host_request {int dummy; } ;
struct cros_ec_rpmsg {int host_event_work; int ept; int xfer_ack; struct rpmsg_device* rpdev; } ;
struct cros_ec_device {int din_size; int dout_size; int phys_name; int pkt_xfer; int cmd_xfer; struct cros_ec_rpmsg* priv; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int cancel_work_sync (int *) ;
 int cros_ec_cmd_xfer_rpmsg ;
 int cros_ec_pkt_xfer_rpmsg ;
 int cros_ec_register (struct cros_ec_device*) ;
 int cros_ec_rpmsg_create_ept (struct rpmsg_device*) ;
 int cros_ec_rpmsg_host_event_function ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct cros_ec_device*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int init_completion (int *) ;
 int rpmsg_destroy_ept (int ) ;

__attribute__((used)) static int cros_ec_rpmsg_probe(struct rpmsg_device *rpdev)
{
 struct device *dev = &rpdev->dev;
 struct cros_ec_rpmsg *ec_rpmsg;
 struct cros_ec_device *ec_dev;
 int ret;

 ec_dev = devm_kzalloc(dev, sizeof(*ec_dev), GFP_KERNEL);
 if (!ec_dev)
  return -ENOMEM;

 ec_rpmsg = devm_kzalloc(dev, sizeof(*ec_rpmsg), GFP_KERNEL);
 if (!ec_rpmsg)
  return -ENOMEM;

 ec_dev->dev = dev;
 ec_dev->priv = ec_rpmsg;
 ec_dev->cmd_xfer = cros_ec_cmd_xfer_rpmsg;
 ec_dev->pkt_xfer = cros_ec_pkt_xfer_rpmsg;
 ec_dev->phys_name = dev_name(&rpdev->dev);
 ec_dev->din_size = sizeof(struct ec_host_response) +
      sizeof(struct ec_response_get_protocol_info);
 ec_dev->dout_size = sizeof(struct ec_host_request);
 dev_set_drvdata(dev, ec_dev);

 ec_rpmsg->rpdev = rpdev;
 init_completion(&ec_rpmsg->xfer_ack);
 INIT_WORK(&ec_rpmsg->host_event_work,
    cros_ec_rpmsg_host_event_function);

 ec_rpmsg->ept = cros_ec_rpmsg_create_ept(rpdev);
 if (!ec_rpmsg->ept)
  return -ENOMEM;

 ret = cros_ec_register(ec_dev);
 if (ret < 0) {
  rpmsg_destroy_ept(ec_rpmsg->ept);
  cancel_work_sync(&ec_rpmsg->host_event_work);
  return ret;
 }

 return 0;
}
