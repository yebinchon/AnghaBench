
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fchs_s {int ox_id; void* s_id; void* d_id; int rx_id; int f_ctl; int type; int cat_info; int routing; } ;


 int FCTL_END_SEQ ;
 int FCTL_FS_EXCH ;
 int FCTL_SEQ_INI ;
 int FCTL_SI_XFER ;
 int FC_CAT_UNSOLICIT_CTRL ;
 int FC_RTG_FC4_DEV_DATA ;
 int FC_RXID_ANY ;
 int FC_TYPE_SERVICES ;
 int bfa_hton3b (int) ;
 int cpu_to_be16 (void*) ;
 int memset (struct fchs_s*,int ,int) ;

__attribute__((used)) static void
fc_gs_fchdr_build(struct fchs_s *fchs, u32 d_id, u32 s_id, u32 ox_id)
{
 memset(fchs, 0, sizeof(struct fchs_s));

 fchs->routing = FC_RTG_FC4_DEV_DATA;
 fchs->cat_info = FC_CAT_UNSOLICIT_CTRL;
 fchs->type = FC_TYPE_SERVICES;
 fchs->f_ctl =
  bfa_hton3b(FCTL_SEQ_INI | FCTL_FS_EXCH | FCTL_END_SEQ |
         FCTL_SI_XFER);
 fchs->rx_id = FC_RXID_ANY;
 fchs->d_id = (d_id);
 fchs->s_id = (s_id);
 fchs->ox_id = cpu_to_be16(ox_id);





}
