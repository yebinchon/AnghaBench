
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_fw_client {int dummy; } ;
struct ishtp_device {int dummy; } ;
struct ishtp_cl_data {int cl_device; } ;
struct ishtp_cl {int dummy; } ;


 int CROS_ISH_CL_RX_RING_SIZE ;
 int CROS_ISH_CL_TX_RING_SIZE ;
 int ENOENT ;
 int ISHTP_CL_CONNECTING ;
 int cl_data_to_dev (struct ishtp_cl_data*) ;
 int cros_ish_guid ;
 int dev_err (int ,char*) ;
 int ish_event_cb ;
 int ishtp_cl_connect (struct ishtp_cl*) ;
 int ishtp_cl_link (struct ishtp_cl*) ;
 int ishtp_cl_set_fw_client_id (struct ishtp_cl*,int ) ;
 int ishtp_cl_unlink (struct ishtp_cl*) ;
 struct ishtp_fw_client* ishtp_fw_cl_get_client (struct ishtp_device*,int *) ;
 struct ishtp_cl_data* ishtp_get_client_data (struct ishtp_cl*) ;
 int ishtp_get_fw_client_id (struct ishtp_fw_client*) ;
 struct ishtp_device* ishtp_get_ishtp_device (struct ishtp_cl*) ;
 int ishtp_register_event_cb (int ,int ) ;
 int ishtp_set_connection_state (struct ishtp_cl*,int ) ;
 int ishtp_set_rx_ring_size (struct ishtp_cl*,int ) ;
 int ishtp_set_tx_ring_size (struct ishtp_cl*,int ) ;

__attribute__((used)) static int cros_ish_init(struct ishtp_cl *cros_ish_cl)
{
 int rv;
 struct ishtp_device *dev;
 struct ishtp_fw_client *fw_client;
 struct ishtp_cl_data *client_data = ishtp_get_client_data(cros_ish_cl);

 rv = ishtp_cl_link(cros_ish_cl);
 if (rv) {
  dev_err(cl_data_to_dev(client_data),
   "ishtp_cl_link failed\n");
  return rv;
 }

 dev = ishtp_get_ishtp_device(cros_ish_cl);


 ishtp_set_tx_ring_size(cros_ish_cl, CROS_ISH_CL_TX_RING_SIZE);
 ishtp_set_rx_ring_size(cros_ish_cl, CROS_ISH_CL_RX_RING_SIZE);

 fw_client = ishtp_fw_cl_get_client(dev, &cros_ish_guid);
 if (!fw_client) {
  dev_err(cl_data_to_dev(client_data),
   "ish client uuid not found\n");
  rv = -ENOENT;
  goto err_cl_unlink;
 }

 ishtp_cl_set_fw_client_id(cros_ish_cl,
      ishtp_get_fw_client_id(fw_client));
 ishtp_set_connection_state(cros_ish_cl, ISHTP_CL_CONNECTING);

 rv = ishtp_cl_connect(cros_ish_cl);
 if (rv) {
  dev_err(cl_data_to_dev(client_data),
   "client connect fail\n");
  goto err_cl_unlink;
 }

 ishtp_register_event_cb(client_data->cl_device, ish_event_cb);
 return 0;

err_cl_unlink:
 ishtp_cl_unlink(cros_ish_cl);
 return rv;
}
