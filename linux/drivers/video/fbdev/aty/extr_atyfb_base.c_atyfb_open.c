
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ mmaped; int open; } ;



__attribute__((used)) static int atyfb_open(struct fb_info *info, int user)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;

 if (user) {
  par->open++;



 }
 return 0;
}
