
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay {TYPE_1__* manager; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t overlay_manager_show(struct omap_overlay *ovl, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n",
   ovl->manager ? ovl->manager->name : "<none>");
}
