
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ct_hdr_s {scalar_t__ reason_code; int cmd_rsp_code; } ;


 scalar_t__ CT_RSN_LOGICAL_BUSY ;
 scalar_t__ CT_RSP_ACCEPT ;
 int FC_PARSE_BUSY ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 scalar_t__ be16_to_cpu (int ) ;

u16
fc_ct_rsp_parse(struct ct_hdr_s *cthdr)
{
 if (be16_to_cpu(cthdr->cmd_rsp_code) != CT_RSP_ACCEPT) {
  if (cthdr->reason_code == CT_RSN_LOGICAL_BUSY)
   return FC_PARSE_BUSY;
  else
   return FC_PARSE_FAILURE;
 }

 return FC_PARSE_OK;
}
