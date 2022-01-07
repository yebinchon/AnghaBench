
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelfb_info {scalar_t__ ring_lockup; } ;
struct fb_info {int dummy; } ;


 int DBG_MSG (char*) ;
 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int intelfbhw_do_sync (struct intelfb_info*) ;

__attribute__((used)) static int intelfb_sync(struct fb_info *info)
{
        struct intelfb_info *dinfo = GET_DINFO(info);





 if (dinfo->ring_lockup)
  return 0;

 intelfbhw_do_sync(dinfo);
 return 0;
}
