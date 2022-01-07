
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sbp_management_request {int speed; int generation; int node_addr; int card; } ;
typedef int low ;
typedef int high ;
typedef int __be32 ;


 int CSR_CONFIG_ROM ;
 int CSR_REGISTER_BASE ;
 int RCODE_COMPLETE ;
 int TCODE_READ_QUADLET_REQUEST ;
 int be32_to_cpu (int ) ;
 int sbp_run_transaction (int ,int ,int ,int ,int ,int,int *,int) ;

__attribute__((used)) static int read_peer_guid(u64 *guid, const struct sbp_management_request *req)
{
 int ret;
 __be32 high, low;

 ret = sbp_run_transaction(req->card, TCODE_READ_QUADLET_REQUEST,
   req->node_addr, req->generation, req->speed,
   (CSR_REGISTER_BASE | CSR_CONFIG_ROM) + 3 * 4,
   &high, sizeof(high));
 if (ret != RCODE_COMPLETE)
  return ret;

 ret = sbp_run_transaction(req->card, TCODE_READ_QUADLET_REQUEST,
   req->node_addr, req->generation, req->speed,
   (CSR_REGISTER_BASE | CSR_CONFIG_ROM) + 4 * 4,
   &low, sizeof(low));
 if (ret != RCODE_COMPLETE)
  return ret;

 *guid = (u64)be32_to_cpu(high) << 32 | be32_to_cpu(low);

 return RCODE_COMPLETE;
}
