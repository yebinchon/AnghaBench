
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int length; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_8__ {TYPE_3__ blue; TYPE_2__ red; TYPE_1__ green; } ;
struct fb_info {TYPE_4__ var; } ;
typedef int __u32 ;


 int max (int ,int) ;

__attribute__((used)) static inline int mono_col(const struct fb_info *info)
{
 __u32 max_len;
 max_len = max(info->var.green.length, info->var.red.length);
 max_len = max(info->var.blue.length, max_len);
 return (~(0xfff << max_len)) & 0xff;
}
