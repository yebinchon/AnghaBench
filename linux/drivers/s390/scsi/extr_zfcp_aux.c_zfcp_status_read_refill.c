
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {scalar_t__ stat_read_buf_num; int stat_miss; int qdio; } ;


 scalar_t__ atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 scalar_t__ zfcp_fsf_status_read (int ) ;

int zfcp_status_read_refill(struct zfcp_adapter *adapter)
{
 while (atomic_add_unless(&adapter->stat_miss, -1, 0))
  if (zfcp_fsf_status_read(adapter->qdio)) {
   atomic_inc(&adapter->stat_miss);
   if (atomic_read(&adapter->stat_miss) >=
       adapter->stat_read_buf_num) {
    zfcp_erp_adapter_reopen(adapter, 0, "axsref1");
    return 1;
   }
   break;
  }
 return 0;
}
