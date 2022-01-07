
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_hw {int dummy; } ;


 int EAGAIN ;
 int csio_rd_reg32 (struct csio_hw*,int) ;
 int udelay (int) ;

int
csio_hw_wait_op_done_val(struct csio_hw *hw, int reg, uint32_t mask,
    int polarity, int attempts, int delay, uint32_t *valp)
{
 uint32_t val;
 while (1) {
  val = csio_rd_reg32(hw, reg);

  if (!!(val & mask) == polarity) {
   if (valp)
    *valp = val;
   return 0;
  }

  if (--attempts == 0)
   return -EAGAIN;
  if (delay)
   udelay(delay);
 }
}
