
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int f_count; } ;


 int atomic_inc (int *) ;
 TYPE_1__ ps3fb ;

__attribute__((used)) static int ps3fb_open(struct fb_info *info, int user)
{
 atomic_inc(&ps3fb.f_count);
 return 0;
}
