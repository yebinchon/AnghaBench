
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int fb_deferred_io_aops ;

void fb_deferred_io_open(struct fb_info *info,
    struct inode *inode,
    struct file *file)
{
 file->f_mapping->a_ops = &fb_deferred_io_aops;
}
