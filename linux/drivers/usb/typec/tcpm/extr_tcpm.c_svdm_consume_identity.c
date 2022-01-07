
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int id_header; int product; void* cert_stat; } ;
struct tcpm_port {int partner; TYPE_1__ partner_ident; int mode_data; } ;
typedef int __le32 ;


 int PD_IDH_VID (int) ;
 int PD_PRODUCT_PID (int) ;
 size_t VDO_INDEX_CSTAT ;
 size_t VDO_INDEX_IDH ;
 size_t VDO_INDEX_PRODUCT ;
 void* le32_to_cpu (int const) ;
 int memset (int *,int ,int) ;
 int tcpm_log (struct tcpm_port*,char*,int ,int ,int) ;
 int typec_partner_set_identity (int ) ;

__attribute__((used)) static void svdm_consume_identity(struct tcpm_port *port, const __le32 *payload,
      int cnt)
{
 u32 vdo = le32_to_cpu(payload[VDO_INDEX_IDH]);
 u32 product = le32_to_cpu(payload[VDO_INDEX_PRODUCT]);

 memset(&port->mode_data, 0, sizeof(port->mode_data));

 port->partner_ident.id_header = vdo;
 port->partner_ident.cert_stat = le32_to_cpu(payload[VDO_INDEX_CSTAT]);
 port->partner_ident.product = product;

 typec_partner_set_identity(port->partner);

 tcpm_log(port, "Identity: %04x:%04x.%04x",
   PD_IDH_VID(vdo),
   PD_PRODUCT_PID(product), product & 0xffff);
}
