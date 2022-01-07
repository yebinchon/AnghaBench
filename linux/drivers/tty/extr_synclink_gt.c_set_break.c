
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; int device_name; } ;


 unsigned short BIT6 ;
 int DBGINFO (char*) ;
 int EINVAL ;
 int TCR ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static int set_break(struct tty_struct *tty, int break_state)
{
 struct slgt_info *info = tty->driver_data;
 unsigned short value;
 unsigned long flags;

 if (sanity_check(info, tty->name, "set_break"))
  return -EINVAL;
 DBGINFO(("%s set_break(%d)\n", info->device_name, break_state));

 spin_lock_irqsave(&info->lock,flags);
 value = rd_reg16(info, TCR);
  if (break_state == -1)
  value |= BIT6;
 else
  value &= ~BIT6;
 wr_reg16(info, TCR, value);
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
