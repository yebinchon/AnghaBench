
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_mem_info {int type; int size; } ;
struct omapfb_info {int region; } ;
struct omapfb2_mem_region {int type; int size; } ;
struct fb_info {int dummy; } ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int memset (struct omapfb_mem_info*,int ,int) ;
 struct omapfb2_mem_region* omapfb_get_mem_region (int ) ;
 int omapfb_put_mem_region (struct omapfb2_mem_region*) ;

__attribute__((used)) static int omapfb_query_mem(struct fb_info *fbi, struct omapfb_mem_info *mi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_mem_region *rg;

 rg = omapfb_get_mem_region(ofbi->region);
 memset(mi, 0, sizeof(*mi));

 mi->size = rg->size;
 mi->type = rg->type;

 omapfb_put_mem_region(rg);

 return 0;
}
