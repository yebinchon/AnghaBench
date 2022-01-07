
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sm501fb_par {int head; int pseudo_palette; struct sm501fb_info* info; } ;
struct sm501fb_info {struct fb_info** fb; int dev; TYPE_1__* pdata; } ;
struct sm501_platdata_fbsub {int dummy; } ;
struct fb_info {int * pseudo_palette; struct sm501fb_par* par; } ;
typedef enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;
struct TYPE_2__ {struct sm501_platdata_fbsub* fb_pnl; struct sm501_platdata_fbsub* fb_crt; } ;


 int ENOMEM ;
 int HEAD_CRT ;
 int dev_info (int ,char*,unsigned char*) ;
 struct fb_info* framebuffer_alloc (int,int ) ;

__attribute__((used)) static int sm501fb_probe_one(struct sm501fb_info *info,
        enum sm501_controller head)
{
 unsigned char *name = (head == HEAD_CRT) ? "crt" : "panel";
 struct sm501_platdata_fbsub *pd;
 struct sm501fb_par *par;
 struct fb_info *fbi;

 pd = (head == HEAD_CRT) ? info->pdata->fb_crt : info->pdata->fb_pnl;


 if (pd == ((void*)0)) {
  dev_info(info->dev, "no data for fb %s (disabled)\n", name);
  return 0;
 }

 fbi = framebuffer_alloc(sizeof(struct sm501fb_par), info->dev);
 if (!fbi)
  return -ENOMEM;

 par = fbi->par;
 par->info = info;
 par->head = head;
 fbi->pseudo_palette = &par->pseudo_palette;

 info->fb[head] = fbi;

 return 0;
}
