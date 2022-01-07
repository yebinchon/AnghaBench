
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_rrq_s {int rx_id; int ox_id; int s_id; } ;


 int FC_RXID_ANY ;
 int cpu_to_be16 (int) ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memcpy (struct fc_rrq_s*,int *,int) ;
 int rrq_tmpl ;

u16
fc_rrq_build(struct fchs_s *fchs, struct fc_rrq_s *rrq, u32 d_id, u32 s_id,
      u16 ox_id, u16 rrq_oxid)
{
 fc_els_req_build(fchs, d_id, s_id, ox_id);




 memcpy(rrq, &rrq_tmpl, sizeof(struct fc_rrq_s));
 rrq->s_id = (s_id);
 rrq->ox_id = cpu_to_be16(rrq_oxid);
 rrq->rx_id = FC_RXID_ANY;

 return sizeof(struct fc_rrq_s);
}
