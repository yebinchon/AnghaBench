
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_portal_group {int proto_id; } ;







 char const* iscsi_parse_pr_out_transport_id (struct se_portal_group*,char*,int*,char**) ;
 int pr_err (char*,int) ;

const char *target_parse_pr_out_transport_id(struct se_portal_group *tpg,
  char *buf, u32 *out_tid_len, char **port_nexus_ptr)
{
 u32 offset;

 switch (tpg->proto_id) {
 case 130:




  offset = 4;
  break;
 case 129:
 case 128:
 case 132:
  offset = 8;
  break;
 case 131:
  return iscsi_parse_pr_out_transport_id(tpg, buf, out_tid_len,
     port_nexus_ptr);
 default:
  pr_err("Unknown proto_id: 0x%02x\n", tpg->proto_id);
  return ((void*)0);
 }

 *port_nexus_ptr = ((void*)0);
 *out_tid_len = 24;
 return buf + offset;
}
