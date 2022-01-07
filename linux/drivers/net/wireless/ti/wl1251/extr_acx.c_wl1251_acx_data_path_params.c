
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl1251 {int dummy; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct acx_data_path_params_resp {TYPE_2__ header; } ;
struct acx_data_path_params {int tx_complete_threshold; int tx_complete_timeout; int tx_complete_ring_depth; int tx_packet_ring_chunk_num; int rx_packet_ring_chunk_num; int tx_packet_ring_chunk_size; int rx_packet_ring_chunk_size; } ;


 int ACX_DATA_PATH_PARAMS ;
 scalar_t__ CMD_STATUS_SUCCESS ;
 int DEBUG_ACX ;
 int DP_RX_PACKET_RING_CHUNK_NUM ;
 int DP_RX_PACKET_RING_CHUNK_SIZE ;
 int DP_TX_COMPLETE_TIME_OUT ;
 int DP_TX_PACKET_RING_CHUNK_NUM ;
 int DP_TX_PACKET_RING_CHUNK_SIZE ;
 int EIO ;
 int ENOMEM ;
 int FW_TX_CMPLT_BLOCK_SIZE ;
 int GFP_KERNEL ;
 int kfree (struct acx_data_path_params*) ;
 struct acx_data_path_params* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_data_path_params*,int) ;
 int wl1251_cmd_interrogate (struct wl1251*,int ,struct acx_data_path_params_resp*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_warning (char*,...) ;

int wl1251_acx_data_path_params(struct wl1251 *wl,
    struct acx_data_path_params_resp *resp)
{
 struct acx_data_path_params *params;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx data path params");

 params = kzalloc(sizeof(*params), GFP_KERNEL);
 if (!params)
  return -ENOMEM;

 params->rx_packet_ring_chunk_size = DP_RX_PACKET_RING_CHUNK_SIZE;
 params->tx_packet_ring_chunk_size = DP_TX_PACKET_RING_CHUNK_SIZE;

 params->rx_packet_ring_chunk_num = DP_RX_PACKET_RING_CHUNK_NUM;
 params->tx_packet_ring_chunk_num = DP_TX_PACKET_RING_CHUNK_NUM;

 params->tx_complete_threshold = 1;

 params->tx_complete_ring_depth = FW_TX_CMPLT_BLOCK_SIZE;

 params->tx_complete_timeout = DP_TX_COMPLETE_TIME_OUT;

 ret = wl1251_cmd_configure(wl, ACX_DATA_PATH_PARAMS,
       params, sizeof(*params));
 if (ret < 0)
  goto out;


 ret = wl1251_cmd_interrogate(wl, ACX_DATA_PATH_PARAMS,
         resp, sizeof(*resp));

 if (ret < 0) {
  wl1251_warning("failed to read data path parameters: %d", ret);
  goto out;
 } else if (resp->header.cmd.status != CMD_STATUS_SUCCESS) {
  wl1251_warning("data path parameter acx status failed");
  ret = -EIO;
  goto out;
 }

out:
 kfree(params);
 return ret;
}
