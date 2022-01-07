
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int dummy; } ;
struct fw_card {int dummy; } ;


 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;


 int pr_debug (char*) ;

__attribute__((used)) static int tgt_agent_rw_unsolicited_status_enable(struct fw_card *card,
  int tcode, void *data, struct sbp_target_agent *agent)
{
 switch (tcode) {
 case 128:
  pr_debug("tgt_agent UNSOLICITED_STATUS_ENABLE\n");

  return RCODE_COMPLETE;

 case 129:
  return RCODE_COMPLETE;

 default:
  return RCODE_TYPE_ERROR;
 }
}
