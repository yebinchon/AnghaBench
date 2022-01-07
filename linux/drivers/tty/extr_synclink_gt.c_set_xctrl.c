
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int xctrl; int lock; int device_name; } ;


 int DBGINFO (char*) ;
 int XCR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg32 (struct slgt_info*,int ,int) ;

__attribute__((used)) static int set_xctrl(struct slgt_info *info, int xctrl)
{
 unsigned long flags;

 DBGINFO(("%s set_xctrl=%x)\n", info->device_name, xctrl));
 spin_lock_irqsave(&info->lock, flags);
 info->xctrl = xctrl;
 wr_reg32(info, XCR, xctrl);
 spin_unlock_irqrestore(&info->lock, flags);
 return 0;
}
