
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int scan_work; scalar_t__ req_no; int req_list; int ref; } ;
struct ccw_device {int dev; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct zfcp_adapter*) ;
 int PTR_ERR (struct zfcp_adapter*) ;
 int dev_err (int *,char*) ;
 int flush_delayed_work (int *) ;
 int kref_get (int *) ;
 struct zfcp_adapter* zfcp_adapter_enqueue (struct ccw_device*) ;
 int zfcp_ccw_activate (struct ccw_device*,int ,char*) ;
 struct zfcp_adapter* zfcp_ccw_adapter_by_cdev (struct ccw_device*) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_fc_inverse_conditional_port_scan (struct zfcp_adapter*) ;
 int zfcp_reqlist_isempty (int ) ;

__attribute__((used)) static int zfcp_ccw_set_online(struct ccw_device *cdev)
{
 struct zfcp_adapter *adapter = zfcp_ccw_adapter_by_cdev(cdev);

 if (!adapter) {
  adapter = zfcp_adapter_enqueue(cdev);

  if (IS_ERR(adapter)) {
   dev_err(&cdev->dev,
    "Setting up data structures for the "
    "FCP adapter failed\n");
   return PTR_ERR(adapter);
  }
  kref_get(&adapter->ref);
 }


 BUG_ON(!zfcp_reqlist_isempty(adapter->req_list));
 adapter->req_no = 0;

 zfcp_ccw_activate(cdev, 0, "ccsonl1");
 zfcp_fc_inverse_conditional_port_scan(adapter);
 flush_delayed_work(&adapter->scan_work);
 zfcp_ccw_adapter_put(adapter);
 return 0;
}
