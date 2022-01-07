
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; int ccw_device; } ;


 int ZFCP_STATUS_ADAPTER_SIOSL_ISSUED ;
 int atomic_or (int,int *) ;
 int atomic_read (int *) ;
 int ccw_device_siosl (int ) ;

void zfcp_qdio_siosl(struct zfcp_adapter *adapter)
{
 int rc;

 if (atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_SIOSL_ISSUED)
  return;

 rc = ccw_device_siosl(adapter->ccw_device);
 if (!rc)
  atomic_or(ZFCP_STATUS_ADAPTER_SIOSL_ISSUED,
    &adapter->status);
}
