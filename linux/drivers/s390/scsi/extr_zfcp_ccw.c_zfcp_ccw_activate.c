
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; } ;
struct ccw_device {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int flush_delayed_work (int *) ;
 int msleep (int ) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_clear_adapter_status (struct zfcp_adapter*,int) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int ) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 int zfcp_fc_port_scan_backoff () ;

__attribute__((used)) static int zfcp_ccw_activate(struct ccw_device *cdev, int clear, char *tag)
{
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);

 if (!adapter)
  return 0;

 zfcp_erp_clear_adapter_status(adapter, clear);
 zfcp_erp_set_adapter_status(adapter, ZFCP_STATUS_COMMON_RUNNING);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
    tag);
 msleep(zfcp_fc_port_scan_backoff());
 zfcp_erp_wait(adapter);
 flush_delayed_work(&adapter->scan_work);

 zfcp_ccw_adapter_put(adapter);

 return 0;
}
