
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct TYPE_2__ {int els_code; } ;
struct fc_rpsc_cmd_s {TYPE_1__ els_cmd; } ;


 int FC_ELS_RPSC ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fc_rpsc_cmd_s*,int ,int) ;

u16
fc_rpsc_build(struct fchs_s *fchs, struct fc_rpsc_cmd_s *rpsc, u32 d_id,
  u32 s_id, u16 ox_id)
{
 fc_els_req_build(fchs, d_id, s_id, ox_id);

 memset(rpsc, 0, sizeof(struct fc_rpsc_cmd_s));

 rpsc->els_cmd.els_code = FC_ELS_RPSC;
 return sizeof(struct fc_rpsc_cmd_s);
}
