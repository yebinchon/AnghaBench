
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_fsf_req {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_1__* ccw_device; int status; } ;
struct fsf_link_down_info {int error_code; } ;
struct TYPE_2__ {int dev; } ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_or (int,int *) ;
 int atomic_read (int *) ;
 int dev_warn (int *,char*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int ) ;
 int zfcp_scsi_schedule_rports_block (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_fsf_link_down_info_eval(struct zfcp_fsf_req *req,
      struct fsf_link_down_info *link_down)
{
 struct zfcp_adapter *adapter = req->adapter;

 if (atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED)
  return;

 atomic_or(ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, &adapter->status);

 zfcp_scsi_schedule_rports_block(adapter);

 if (!link_down)
  goto out;

 switch (link_down->error_code) {
 case 132:
  dev_warn(&req->adapter->ccw_device->dev,
    "There is no light signal from the local "
    "fibre channel cable\n");
  break;
 case 129:
  dev_warn(&req->adapter->ccw_device->dev,
    "There is a wrap plug instead of a fibre "
    "channel cable\n");
  break;
 case 134:
  dev_warn(&req->adapter->ccw_device->dev,
    "The adjacent fibre channel node does not "
    "support FCP\n");
  break;
 case 138:
  dev_warn(&req->adapter->ccw_device->dev,
    "The FCP device is suspended because of a "
    "firmware update\n");
  break;
 case 137:
  dev_warn(&req->adapter->ccw_device->dev,
    "The FCP device detected a WWPN that is "
    "duplicate or not valid\n");
  break;
 case 131:
  dev_warn(&req->adapter->ccw_device->dev,
    "The fibre channel fabric does not support NPIV\n");
  break;
 case 133:
  dev_warn(&req->adapter->ccw_device->dev,
    "The FCP adapter cannot support more NPIV ports\n");
  break;
 case 135:
  dev_warn(&req->adapter->ccw_device->dev,
    "The adjacent switch cannot support "
    "more NPIV ports\n");
  break;
 case 139:
  dev_warn(&req->adapter->ccw_device->dev,
    "The FCP adapter could not log in to the "
    "fibre channel fabric\n");
  break;
 case 128:
  dev_warn(&req->adapter->ccw_device->dev,
    "The WWPN assignment file on the FCP adapter "
    "has been damaged\n");
  break;
 case 136:
  dev_warn(&req->adapter->ccw_device->dev,
    "The mode table on the FCP adapter "
    "has been damaged\n");
  break;
 case 130:
  dev_warn(&req->adapter->ccw_device->dev,
    "All NPIV ports on the FCP adapter have "
    "been assigned\n");
  break;
 default:
  dev_warn(&req->adapter->ccw_device->dev,
    "The link between the FCP adapter and "
    "the FC fabric is down\n");
 }
out:
 zfcp_erp_set_adapter_status(adapter, ZFCP_STATUS_COMMON_ERP_FAILED);
}
