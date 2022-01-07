
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {int dummy; } ;
struct gb_camera_csi_params {unsigned int clk_freq; int num_lanes; } ;
struct gb_camera_configure_streams_response {int data_rate; } ;
struct gb_camera {struct gb_connection* data_connection; TYPE_1__* connection; int data_cport_id; int bundle; } ;
struct ap_csi_config_request {int csi_id; int num_lanes; unsigned int csi_clk_freq; int max_pkt_size; scalar_t__ flags; } ;
typedef int csi_cfg ;
struct TYPE_2__ {int hd; } ;


 int EIO ;
 int GB_APB_REQUEST_CSI_TX_CONTROL ;
 scalar_t__ GB_CAMERA_CSI_CLK_FREQ_MARGIN ;
 int GB_CAMERA_CSI_CLK_FREQ_MAX ;
 int GB_CAMERA_CSI_CLK_FREQ_MIN ;
 int GB_CAMERA_CSI_NUM_DATA_LANES ;
 int GB_CONNECTION_FLAG_CDSI1 ;
 int GB_CONNECTION_FLAG_NO_FLOWCTRL ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 unsigned int clamp (scalar_t__,int ,int ) ;
 int gb_camera_get_max_pkt_size (struct gb_camera*,struct gb_camera_configure_streams_response*) ;
 int gb_camera_set_power_mode (struct gb_camera*,int) ;
 struct gb_connection* gb_connection_create_offloaded (int ,int ,int) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_camera*) ;
 int gb_hd_output (int ,struct ap_csi_config_request*,int,int ,int) ;
 int gcam_err (struct gb_camera*,char*) ;
 int memset (struct ap_csi_config_request*,int ,int) ;

__attribute__((used)) static int gb_camera_setup_data_connection(struct gb_camera *gcam,
  struct gb_camera_configure_streams_response *resp,
  struct gb_camera_csi_params *csi_params)
{
 struct ap_csi_config_request csi_cfg;
 struct gb_connection *conn;
 unsigned int clk_freq;
 int ret;





 conn = gb_connection_create_offloaded(gcam->bundle, gcam->data_cport_id,
           GB_CONNECTION_FLAG_NO_FLOWCTRL |
           GB_CONNECTION_FLAG_CDSI1);
 if (IS_ERR(conn))
  return PTR_ERR(conn);

 gcam->data_connection = conn;
 gb_connection_set_data(conn, gcam);

 ret = gb_connection_enable(conn);
 if (ret)
  goto error_conn_destroy;


 ret = gb_camera_set_power_mode(gcam, 1);
 if (ret < 0)
  goto error_conn_disable;







 memset(&csi_cfg, 0, sizeof(csi_cfg));
 csi_cfg.csi_id = 1;
 csi_cfg.flags = 0;
 csi_cfg.num_lanes = GB_CAMERA_CSI_NUM_DATA_LANES;

 clk_freq = resp->data_rate / 2 / GB_CAMERA_CSI_NUM_DATA_LANES;
 clk_freq = clamp(clk_freq + GB_CAMERA_CSI_CLK_FREQ_MARGIN,
    GB_CAMERA_CSI_CLK_FREQ_MIN,
    GB_CAMERA_CSI_CLK_FREQ_MAX);
 csi_cfg.csi_clk_freq = clk_freq;

 ret = gb_camera_get_max_pkt_size(gcam, resp);
 if (ret < 0) {
  ret = -EIO;
  goto error_power;
 }
 csi_cfg.max_pkt_size = ret;

 ret = gb_hd_output(gcam->connection->hd, &csi_cfg,
      sizeof(csi_cfg),
      GB_APB_REQUEST_CSI_TX_CONTROL, 0);
 if (ret < 0) {
  gcam_err(gcam, "failed to start the CSI transmitter\n");
  goto error_power;
 }

 if (csi_params) {
  csi_params->clk_freq = csi_cfg.csi_clk_freq;
  csi_params->num_lanes = csi_cfg.num_lanes;
 }

 return 0;

error_power:
 gb_camera_set_power_mode(gcam, 0);
error_conn_disable:
 gb_connection_disable(gcam->data_connection);
error_conn_destroy:
 gb_connection_destroy(gcam->data_connection);
 gcam->data_connection = ((void*)0);
 return ret;
}
