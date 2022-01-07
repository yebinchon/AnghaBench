
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_els_cmd_s {int els_code; } ;
struct bfa_fcs_fabric_s {int fcs; } ;



 int bfa_fcs_fabric_process_flogi (struct bfa_fcs_fabric_s*,struct fchs_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_process_uf(struct bfa_fcs_fabric_s *fabric, struct fchs_s *fchs,
     u16 len)
{
 struct fc_els_cmd_s *els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

 bfa_trc(fabric->fcs, els_cmd->els_code);

 switch (els_cmd->els_code) {
 case 128:
  bfa_fcs_fabric_process_flogi(fabric, fchs, len);
  break;

 default:



  break;
 }
}
