
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ipr_ioa_cfg {TYPE_1__* bus_attr; } ;
struct TYPE_2__ {scalar_t__ max_xfer_rate; int bus_width; } ;


 int IPR_MAX_NUM_BUSES ;
 scalar_t__ ipr_get_max_scsi_speed (struct ipr_ioa_cfg*,int,int ) ;

__attribute__((used)) static void ipr_scsi_bus_speed_limit(struct ipr_ioa_cfg *ioa_cfg)
{
 u32 max_xfer_rate;
 int i;

 for (i = 0; i < IPR_MAX_NUM_BUSES; i++) {
  max_xfer_rate = ipr_get_max_scsi_speed(ioa_cfg, i,
             ioa_cfg->bus_attr[i].bus_width);

  if (max_xfer_rate < ioa_cfg->bus_attr[i].max_xfer_rate)
   ioa_cfg->bus_attr[i].max_xfer_rate = max_xfer_rate;
 }
}
