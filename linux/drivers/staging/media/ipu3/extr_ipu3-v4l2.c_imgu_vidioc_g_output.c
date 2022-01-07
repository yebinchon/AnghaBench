
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static int imgu_vidioc_g_output(struct file *file, void *fh,
    unsigned int *output)
{
 *output = 0;

 return 0;
}
