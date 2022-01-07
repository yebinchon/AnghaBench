
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int if_mode; int lock; int device_name; } ;


 unsigned short BIT7 ;
 int DBGINFO (char*) ;
 int MGSL_INTERFACE_RTS_EN ;
 int TCR ;
 int msc_set_vcr (struct slgt_info*) ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static int set_interface(struct slgt_info *info, int if_mode)
{
  unsigned long flags;
 unsigned short val;

 DBGINFO(("%s set_interface=%x)\n", info->device_name, if_mode));
 spin_lock_irqsave(&info->lock,flags);
 info->if_mode = if_mode;

 msc_set_vcr(info);


 val = rd_reg16(info, TCR);
 if (info->if_mode & MGSL_INTERFACE_RTS_EN)
  val |= BIT7;
 else
  val &= ~BIT7;
 wr_reg16(info, TCR, val);

 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
