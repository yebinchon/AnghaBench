
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gid_pn; int sr_data; int status_read_req; int qtcb_pool; int scsi_abort; int scsi_req; int erp_req; } ;
struct zfcp_adapter {TYPE_1__ pool; } ;


 int mempool_destroy (int ) ;

__attribute__((used)) static void zfcp_free_low_mem_buffers(struct zfcp_adapter *adapter)
{
 mempool_destroy(adapter->pool.erp_req);
 mempool_destroy(adapter->pool.scsi_req);
 mempool_destroy(adapter->pool.scsi_abort);
 mempool_destroy(adapter->pool.qtcb_pool);
 mempool_destroy(adapter->pool.status_read_req);
 mempool_destroy(adapter->pool.sr_data);
 mempool_destroy(adapter->pool.gid_pn);
}
