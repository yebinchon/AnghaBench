
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {scalar_t__ workqueue; } ;


 int flush_workqueue (scalar_t__) ;
 int ll_adapter_reset (struct pvscsi_adapter*) ;
 int pvscsi_mask_intr (struct pvscsi_adapter*) ;
 int pvscsi_process_completion_ring (struct pvscsi_adapter*) ;
 int pvscsi_process_request_ring (struct pvscsi_adapter*) ;
 int pvscsi_shutdown_intr (struct pvscsi_adapter*) ;

__attribute__((used)) static void __pvscsi_shutdown(struct pvscsi_adapter *adapter)
{
 pvscsi_mask_intr(adapter);

 if (adapter->workqueue)
  flush_workqueue(adapter->workqueue);

 pvscsi_shutdown_intr(adapter);

 pvscsi_process_request_ring(adapter);
 pvscsi_process_completion_ring(adapter);
 ll_adapter_reset(adapter);
}
