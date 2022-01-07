
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bbc_i2c_bus {int waiting; int wq; scalar_t__ i2c_control_regs; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int I2C_PCF_PIN ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int msecs_to_jiffies (int) ;
 int readb (scalar_t__) ;
 int remove_wait_queue (int *,int *) ;
 int wait ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int wait_for_pin(struct bbc_i2c_bus *bp, u8 *status)
{
 DECLARE_WAITQUEUE(wait, current);
 int limit = 32;
 int ret = 1;

 bp->waiting = 1;
 add_wait_queue(&bp->wq, &wait);
 while (limit-- > 0) {
  long val;

  val = wait_event_interruptible_timeout(
    bp->wq,
    (((*status = readb(bp->i2c_control_regs + 0))
      & I2C_PCF_PIN) == 0),
    msecs_to_jiffies(250));
  if (val > 0) {
   ret = 0;
   break;
  }
 }
 remove_wait_queue(&bp->wq, &wait);
 bp->waiting = 0;

 return ret;
}
