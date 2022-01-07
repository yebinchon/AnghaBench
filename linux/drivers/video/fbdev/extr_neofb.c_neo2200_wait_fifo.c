
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int neo2200_sync (struct fb_info*) ;

__attribute__((used)) static inline void neo2200_wait_fifo(struct fb_info *info,
         int requested_fifo_space)
{
 neo2200_sync(info);
}
