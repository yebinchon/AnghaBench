
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct scsi_device {int channel; size_t id; struct MR_PRIV_DEVICE* hostdata; TYPE_2__* host; } ;
struct megasas_instance {int r1_ldio_hint_default; TYPE_1__* pd_list; scalar_t__ pd_list_not_supported; } ;
struct MR_PRIV_DEVICE {int r1_ldio_hint; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {scalar_t__ driveState; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int MEGASAS_IS_LOGICAL (struct scsi_device*) ;
 int MEGASAS_MAX_DEV_PER_CHANNEL ;
 scalar_t__ MR_PD_STATE_SYSTEM ;
 int atomic_set (int *,int ) ;
 struct MR_PRIV_DEVICE* kzalloc (int,int ) ;
 struct megasas_instance* megasas_lookup_instance (int ) ;

__attribute__((used)) static int megasas_slave_alloc(struct scsi_device *sdev)
{
 u16 pd_index = 0;
 struct megasas_instance *instance ;
 struct MR_PRIV_DEVICE *mr_device_priv_data;

 instance = megasas_lookup_instance(sdev->host->host_no);
 if (!MEGASAS_IS_LOGICAL(sdev)) {



  pd_index =
   (sdev->channel * MEGASAS_MAX_DEV_PER_CHANNEL) +
   sdev->id;
  if ((instance->pd_list_not_supported ||
   instance->pd_list[pd_index].driveState ==
   MR_PD_STATE_SYSTEM)) {
   goto scan_target;
  }
  return -ENXIO;
 }

scan_target:
 mr_device_priv_data = kzalloc(sizeof(*mr_device_priv_data),
     GFP_KERNEL);
 if (!mr_device_priv_data)
  return -ENOMEM;
 sdev->hostdata = mr_device_priv_data;

 atomic_set(&mr_device_priv_data->r1_ldio_hint,
     instance->r1_ldio_hint_default);
 return 0;
}
