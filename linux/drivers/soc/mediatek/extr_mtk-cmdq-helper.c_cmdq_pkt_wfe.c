
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct cmdq_pkt {int dummy; } ;


 int CMDQ_CODE_WFE ;
 scalar_t__ CMDQ_MAX_EVENT ;
 int CMDQ_WFE_UPDATE ;
 int CMDQ_WFE_WAIT ;
 int CMDQ_WFE_WAIT_VALUE ;
 int EINVAL ;
 int cmdq_pkt_append_command (struct cmdq_pkt*,int ,scalar_t__,int) ;

int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
{
 u32 arg_b;

 if (event >= CMDQ_MAX_EVENT)
  return -EINVAL;
 arg_b = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;

 return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event, arg_b);
}
