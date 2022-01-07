
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wsm_rcpi_rssi_threshold {int rssiRcpiMode; int rollingAverageCount; } ;
struct wsm_configuration {int dpdData_size; int dpdData; int * dot11StationId; } ;
struct cw1200_common {int cqm_use_rssi; TYPE_1__* sdd; int sdd_path; int pdev; int * mac_addr; } ;
struct TYPE_2__ {int size; int data; } ;


 int WSM_RCPI_RSSI_DONT_USE_LOWER ;
 int WSM_RCPI_RSSI_DONT_USE_UPPER ;
 int WSM_RCPI_RSSI_THRESHOLD_ENABLE ;
 int WSM_RCPI_RSSI_USE_RSSI ;
 int cw1200_parse_sdd_file (struct cw1200_common*) ;
 int pr_err (char*,int ) ;
 int request_firmware (TYPE_1__**,int ,int ) ;
 int wsm_configuration (struct cw1200_common*,struct wsm_configuration*) ;
 int wsm_set_rcpi_rssi_threshold (struct cw1200_common*,struct wsm_rcpi_rssi_threshold*) ;

int cw1200_setup_mac(struct cw1200_common *priv)
{
 int ret = 0;
 struct wsm_rcpi_rssi_threshold threshold = {
  .rssiRcpiMode = WSM_RCPI_RSSI_THRESHOLD_ENABLE |
  WSM_RCPI_RSSI_DONT_USE_UPPER |
  WSM_RCPI_RSSI_DONT_USE_LOWER,
  .rollingAverageCount = 16,
 };

 struct wsm_configuration cfg = {
  .dot11StationId = &priv->mac_addr[0],
 };




 if (threshold.rssiRcpiMode & WSM_RCPI_RSSI_USE_RSSI)
  priv->cqm_use_rssi = 1;

 if (!priv->sdd) {
  ret = request_firmware(&priv->sdd, priv->sdd_path, priv->pdev);
  if (ret) {
   pr_err("Can't load sdd file %s.\n", priv->sdd_path);
   return ret;
  }
  cw1200_parse_sdd_file(priv);
 }

 cfg.dpdData = priv->sdd->data;
 cfg.dpdData_size = priv->sdd->size;
 ret = wsm_configuration(priv, &cfg);
 if (ret)
  return ret;


 wsm_set_rcpi_rssi_threshold(priv, &threshold);

 return 0;
}
