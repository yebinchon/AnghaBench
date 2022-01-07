
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int dummy; } ;
struct fb_info {int var; struct ufx_data* par; } ;


 int ufx_set_vid_mode (struct ufx_data*,int *) ;

__attribute__((used)) static int ufx_ops_blank(int blank_mode, struct fb_info *info)
{
 struct ufx_data *dev = info->par;
 ufx_set_vid_mode(dev, &info->var);
 return 0;
}
