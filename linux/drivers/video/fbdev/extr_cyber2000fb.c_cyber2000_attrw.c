
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int dummy; } ;


 int cyber2000fb_readb (int,struct cfb_info*) ;
 int cyber2000fb_writeb (unsigned int,int,struct cfb_info*) ;

__attribute__((used)) static inline void
cyber2000_attrw(unsigned int reg, unsigned int val, struct cfb_info *cfb)
{
 cyber2000fb_readb(0x3da, cfb);
 cyber2000fb_writeb(reg, 0x3c0, cfb);
 cyber2000fb_readb(0x3c1, cfb);
 cyber2000fb_writeb(val, 0x3c0, cfb);
}
