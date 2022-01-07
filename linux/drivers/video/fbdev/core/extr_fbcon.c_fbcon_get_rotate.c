
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int rotate; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;



__attribute__((used)) static int fbcon_get_rotate(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;

 return (ops) ? ops->rotate : 0;
}
