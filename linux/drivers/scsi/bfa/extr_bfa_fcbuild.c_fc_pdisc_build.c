
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_5__ {int rxsz; } ;
struct TYPE_4__ {int rxsz; } ;
struct TYPE_6__ {int els_code; } ;
struct fc_logi_s {void* node_name; void* port_name; TYPE_2__ class3; TYPE_1__ csp; TYPE_3__ els_cmd; } ;


 int FC_ELS_PDISC ;
 int cpu_to_be16 (int) ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memcpy (struct fc_logi_s*,int *,int) ;
 int plogi_tmpl ;

u16
fc_pdisc_build(struct fchs_s *fchs, u32 d_id, u32 s_id, u16 ox_id,
        wwn_t port_name, wwn_t node_name, u16 pdu_size)
{
 struct fc_logi_s *pdisc = (struct fc_logi_s *) (fchs + 1);

 memcpy(pdisc, &plogi_tmpl, sizeof(struct fc_logi_s));

 pdisc->els_cmd.els_code = FC_ELS_PDISC;
 fc_els_req_build(fchs, d_id, s_id, ox_id);

 pdisc->csp.rxsz = pdisc->class3.rxsz = cpu_to_be16(pdu_size);
 pdisc->port_name = port_name;
 pdisc->node_name = node_name;

 return sizeof(struct fc_logi_s);
}
