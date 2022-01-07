
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; } ;
struct ccw_device {int dev; } ;






 int ZFCP_STATUS_ADAPTER_SUSPENDED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int atomic_read (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_dbf_hba_basic (char*,struct zfcp_adapter*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int ) ;

__attribute__((used)) static int zfcp_ccw_notify(struct ccw_device *cdev, int event)
{
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);

 if (!adapter)
  return 1;

 switch (event) {
 case 130:
  if (atomic_read(&adapter->status) &
      ZFCP_STATUS_ADAPTER_SUSPENDED) {
   zfcp_dbf_hba_basic("ccnigo1", adapter);
   break;
  }
  dev_warn(&cdev->dev, "The FCP device has been detached\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti1");
  break;
 case 129:
  dev_warn(&cdev->dev,
    "The CHPID for the FCP device is offline\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti2");
  break;
 case 128:
  if (atomic_read(&adapter->status) &
      ZFCP_STATUS_ADAPTER_SUSPENDED) {
   zfcp_dbf_hba_basic("ccniop1", adapter);
   break;
  }
  dev_info(&cdev->dev, "The FCP device is operational again\n");
  zfcp_erp_set_adapter_status(adapter,
         ZFCP_STATUS_COMMON_RUNNING);
  zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
     "ccnoti4");
  break;
 case 131:
  dev_warn(&cdev->dev, "The FCP device did not respond within "
         "the specified time\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "ccnoti5");
  break;
 }

 zfcp_ccw_adapter_put(adapter);
 return 1;
}
