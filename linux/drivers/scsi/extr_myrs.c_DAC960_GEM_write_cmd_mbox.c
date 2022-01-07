
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union myrs_cmd_mbox {int * words; } ;


 int mb () ;
 int memcpy (int *,int *,int) ;
 int wmb () ;

__attribute__((used)) static inline void DAC960_GEM_write_cmd_mbox(union myrs_cmd_mbox *mem_mbox,
  union myrs_cmd_mbox *mbox)
{
 memcpy(&mem_mbox->words[1], &mbox->words[1],
        sizeof(union myrs_cmd_mbox) - sizeof(unsigned int));

 wmb();
 mem_mbox->words[0] = mbox->words[0];

 mb();
}
