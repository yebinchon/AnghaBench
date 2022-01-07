
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cmdq_pkt {int dummy; } ;


 int CMDQ_ARG_A_WRITE_MASK ;
 int CMDQ_CODE_WRITE ;
 int CMDQ_SUBSYS_SHIFT ;
 int cmdq_pkt_append_command (struct cmdq_pkt*,int ,int,int) ;

int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
{
 u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
      (subsys << CMDQ_SUBSYS_SHIFT);

 return cmdq_pkt_append_command(pkt, CMDQ_CODE_WRITE, arg_a, value);
}
