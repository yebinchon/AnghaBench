
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynxfb_output {int (* proc_setBLANK ) (struct lynxfb_output*,int) ;} ;
struct lynxfb_par {struct lynxfb_output output; } ;
struct fb_info {struct lynxfb_par* par; } ;


 int pr_debug (char*,int) ;
 int stub1 (struct lynxfb_output*,int) ;

__attribute__((used)) static int lynxfb_ops_blank(int blank, struct fb_info *info)
{
 struct lynxfb_par *par;
 struct lynxfb_output *output;

 pr_debug("blank = %d.\n", blank);
 par = info->par;
 output = &par->output;
 return output->proc_setBLANK(output, blank);
}
