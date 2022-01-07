
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int mac; } ;
struct qed_generic_tlvs {int * mac; } ;


 int QEDI_INFO (int *,int ,char*) ;
 int QEDI_LOG_EVT ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_generic_tlvs*,int ,int) ;

__attribute__((used)) static void qedi_get_generic_tlv_data(void *dev, struct qed_generic_tlvs *data)
{
 struct qedi_ctx *qedi;

 if (!dev) {
  QEDI_INFO(((void*)0), QEDI_LOG_EVT,
     "dev is NULL so ignoring get_generic_tlv_data request.\n");
  return;
 }
 qedi = (struct qedi_ctx *)dev;

 memset(data, 0, sizeof(struct qed_generic_tlvs));
 ether_addr_copy(data->mac[0], qedi->mac);
}
