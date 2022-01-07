
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union myrb_cmd_mbox {int * words; } ;


 int mb () ;
 int wmb () ;

__attribute__((used)) static inline void DAC960_PG_write_cmd_mbox(union myrb_cmd_mbox *mem_mbox,
  union myrb_cmd_mbox *mbox)
{
 mem_mbox->words[1] = mbox->words[1];
 mem_mbox->words[2] = mbox->words[2];
 mem_mbox->words[3] = mbox->words[3];

 wmb();
 mem_mbox->words[0] = mbox->words[0];

 mb();
}
