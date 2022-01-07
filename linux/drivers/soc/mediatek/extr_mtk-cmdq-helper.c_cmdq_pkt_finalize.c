
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_pkt {int dummy; } ;


 int CMDQ_CODE_EOC ;
 int CMDQ_CODE_JUMP ;
 int CMDQ_EOC_IRQ_EN ;
 int CMDQ_JUMP_PASS ;
 int cmdq_pkt_append_command (struct cmdq_pkt*,int ,int ,int ) ;

__attribute__((used)) static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
{
 int err;


 err = cmdq_pkt_append_command(pkt, CMDQ_CODE_EOC, 0, CMDQ_EOC_IRQ_EN);


 err |= cmdq_pkt_append_command(pkt, CMDQ_CODE_JUMP, 0, CMDQ_JUMP_PASS);

 return err;
}
