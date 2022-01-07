
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfb_info {int fb; int mem_ctl2; int mem_ctl1; } ;


 int EXT_MEM_CTL1 ;
 int EXT_MEM_CTL2 ;
 int cyber2000_grphw (int ,int ,struct cfb_info*) ;
 int cyber2000fb_set_par (int *) ;
 int cyberpro_init_hw (struct cfb_info*) ;

__attribute__((used)) static void cyberpro_common_resume(struct cfb_info *cfb)
{
 cyberpro_init_hw(cfb);




 cyber2000_grphw(EXT_MEM_CTL1, cfb->mem_ctl1, cfb);
 cyber2000_grphw(EXT_MEM_CTL2, cfb->mem_ctl2, cfb);





 cyber2000fb_set_par(&cfb->fb);
}
