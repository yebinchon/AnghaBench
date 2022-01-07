
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_data {int cros_ish_cl; struct cros_ec_device* ec_dev; } ;
struct ec_response_get_protocol_info {int dummy; } ;
struct device {struct cros_ec_device* driver_data; } ;
struct cros_ish_out_msg {int dummy; } ;
struct cros_ish_in_msg {int dummy; } ;
struct cros_ec_device {int din_size; int dout_size; int phys_name; int pkt_xfer; int * cmd_xfer; int priv; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct device* cl_data_to_dev (struct ishtp_cl_data*) ;
 int cros_ec_pkt_xfer_ish ;
 int cros_ec_register (struct cros_ec_device*) ;
 int dev_name (struct device*) ;
 struct cros_ec_device* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static int cros_ec_dev_init(struct ishtp_cl_data *client_data)
{
 struct cros_ec_device *ec_dev;
 struct device *dev = cl_data_to_dev(client_data);

 ec_dev = devm_kzalloc(dev, sizeof(*ec_dev), GFP_KERNEL);
 if (!ec_dev)
  return -ENOMEM;

 client_data->ec_dev = ec_dev;
 dev->driver_data = ec_dev;

 ec_dev->dev = dev;
 ec_dev->priv = client_data->cros_ish_cl;
 ec_dev->cmd_xfer = ((void*)0);
 ec_dev->pkt_xfer = cros_ec_pkt_xfer_ish;
 ec_dev->phys_name = dev_name(dev);
 ec_dev->din_size = sizeof(struct cros_ish_in_msg) +
      sizeof(struct ec_response_get_protocol_info);
 ec_dev->dout_size = sizeof(struct cros_ish_out_msg);

 return cros_ec_register(ec_dev);
}
