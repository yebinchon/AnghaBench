
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int func_use_count; } ;


 int EXT_FUNC_CTL ;
 int EXT_FUNC_CTL_EXTREGENBL ;
 int cyber2000_grphr (int ,struct cfb_info*) ;
 int cyber2000_grphw (int ,int,struct cfb_info*) ;

void cyber2000fb_enable_extregs(struct cfb_info *cfb)
{
 cfb->func_use_count += 1;

 if (cfb->func_use_count == 1) {
  int old;

  old = cyber2000_grphr(EXT_FUNC_CTL, cfb);
  old |= EXT_FUNC_CTL_EXTREGENBL;
  cyber2000_grphw(EXT_FUNC_CTL, old, cfb);
 }
}
