
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int mac; } ;
struct qed_generic_tlvs {int * mac; } ;


 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_EVT ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_generic_tlvs*,int ,int) ;

void qedf_get_generic_tlv_data(void *dev, struct qed_generic_tlvs *data)
{
 struct qedf_ctx *qedf;

 if (!dev) {
  QEDF_INFO(((void*)0), QEDF_LOG_EVT,
     "dev is NULL so ignoring get_generic_tlv_data request.\n");
  return;
 }
 qedf = (struct qedf_ctx *)dev;

 memset(data, 0, sizeof(struct qed_generic_tlvs));
 ether_addr_copy(data->mac[0], qedf->mac);
}
