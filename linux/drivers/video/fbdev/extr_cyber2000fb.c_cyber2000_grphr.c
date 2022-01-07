
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int dummy; } ;


 unsigned int cyber2000fb_readb (int,struct cfb_info*) ;
 int cyber2000fb_writeb (unsigned int,int,struct cfb_info*) ;

__attribute__((used)) static inline unsigned int
cyber2000_grphr(unsigned int reg, struct cfb_info *cfb)
{
 cyber2000fb_writeb(reg, 0x3ce, cfb);
 return cyber2000fb_readb(0x3cf, cfb);
}
