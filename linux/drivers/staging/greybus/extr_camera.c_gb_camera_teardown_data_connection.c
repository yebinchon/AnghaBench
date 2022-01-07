
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_camera {int * data_connection; TYPE_1__* connection; } ;
struct ap_csi_config_request {int csi_id; } ;
typedef int csi_cfg ;
struct TYPE_2__ {int hd; } ;


 int GB_APB_REQUEST_CSI_TX_CONTROL ;
 int gb_camera_set_power_mode (struct gb_camera*,int) ;
 int gb_connection_destroy (int *) ;
 int gb_connection_disable (int *) ;
 int gb_hd_output (int ,struct ap_csi_config_request*,int,int ,int) ;
 int gcam_err (struct gb_camera*,char*) ;
 int memset (struct ap_csi_config_request*,int ,int) ;

__attribute__((used)) static void gb_camera_teardown_data_connection(struct gb_camera *gcam)
{
 struct ap_csi_config_request csi_cfg;
 int ret;


 memset(&csi_cfg, 0, sizeof(csi_cfg));
 csi_cfg.csi_id = 1;

 ret = gb_hd_output(gcam->connection->hd, &csi_cfg,
      sizeof(csi_cfg),
      GB_APB_REQUEST_CSI_TX_CONTROL, 0);

 if (ret < 0)
  gcam_err(gcam, "failed to stop the CSI transmitter\n");


 gb_camera_set_power_mode(gcam, 0);


 gb_connection_disable(gcam->data_connection);
 gb_connection_destroy(gcam->data_connection);
 gcam->data_connection = ((void*)0);
}
