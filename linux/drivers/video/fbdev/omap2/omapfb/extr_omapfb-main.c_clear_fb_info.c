
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct fb_info {TYPE_1__ fix; TYPE_1__ var; } ;


 int MODULE_NAME ;
 int memset (TYPE_1__*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void clear_fb_info(struct fb_info *fbi)
{
 memset(&fbi->var, 0, sizeof(fbi->var));
 memset(&fbi->fix, 0, sizeof(fbi->fix));
 strlcpy(fbi->fix.id, MODULE_NAME, sizeof(fbi->fix.id));
}
