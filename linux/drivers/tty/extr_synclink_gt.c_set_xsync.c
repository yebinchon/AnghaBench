
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int xsync; int lock; int device_name; } ;


 int DBGINFO (char*) ;
 int XSR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg32 (struct slgt_info*,int ,int) ;

__attribute__((used)) static int set_xsync(struct slgt_info *info, int xsync)
{
 unsigned long flags;

 DBGINFO(("%s set_xsync=%x)\n", info->device_name, xsync));
 spin_lock_irqsave(&info->lock, flags);
 info->xsync = xsync;
 wr_reg32(info, XSR, xsync);
 spin_unlock_irqrestore(&info->lock, flags);
 return 0;
}
