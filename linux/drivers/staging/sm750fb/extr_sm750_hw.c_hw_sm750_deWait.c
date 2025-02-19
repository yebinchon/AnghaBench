
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEM_CTRL ;
 unsigned int SYSTEM_CTRL_DE_FIFO_EMPTY ;
 unsigned int SYSTEM_CTRL_DE_MEM_FIFO_EMPTY ;
 unsigned int SYSTEM_CTRL_DE_STATUS_BUSY ;
 unsigned int peek32 (int ) ;

int hw_sm750_deWait(void)
{
 int i = 0x10000000;
 unsigned int mask = SYSTEM_CTRL_DE_STATUS_BUSY |
  SYSTEM_CTRL_DE_FIFO_EMPTY |
  SYSTEM_CTRL_DE_MEM_FIFO_EMPTY;

 while (i--) {
  unsigned int val = peek32(SYSTEM_CTRL);

  if ((val & mask) ==
      (SYSTEM_CTRL_DE_FIFO_EMPTY | SYSTEM_CTRL_DE_MEM_FIFO_EMPTY))
   return 0;
 }

 return -1;
}
