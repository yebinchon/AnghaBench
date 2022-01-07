
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTK (char*,unsigned int) ;
 int hga_reg_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_hga_w (unsigned int,int) ;

__attribute__((used)) static void hga_pan(unsigned int xoffset, unsigned int yoffset)
{
 unsigned int base;
 unsigned long flags;

 base = (yoffset / 8) * 90 + xoffset;
 spin_lock_irqsave(&hga_reg_lock, flags);
 write_hga_w(base, 0x0c);
 spin_unlock_irqrestore(&hga_reg_lock, flags);
 DPRINTK("hga_pan: base:%d\n", base);
}
