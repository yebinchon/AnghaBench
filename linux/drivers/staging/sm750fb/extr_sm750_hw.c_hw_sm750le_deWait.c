
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DE_STATE2 ;
 unsigned int DE_STATE2_DE_FIFO_EMPTY ;
 unsigned int DE_STATE2_DE_MEM_FIFO_EMPTY ;
 unsigned int DE_STATE2_DE_STATUS_BUSY ;
 unsigned int peek32 (int ) ;

int hw_sm750le_deWait(void)
{
 int i = 0x10000000;
 unsigned int mask = DE_STATE2_DE_STATUS_BUSY | DE_STATE2_DE_FIFO_EMPTY |
  DE_STATE2_DE_MEM_FIFO_EMPTY;

 while (i--) {
  unsigned int val = peek32(DE_STATE2);

  if ((val & mask) ==
      (DE_STATE2_DE_FIFO_EMPTY | DE_STATE2_DE_MEM_FIFO_EMPTY))
   return 0;
 }

 return -1;
}
