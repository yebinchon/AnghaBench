
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtmc_file_data {TYPE_1__* data; } ;
struct file {struct usbtmc_file_data* private_data; } ;
struct TYPE_2__ {int fasync; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int usbtmc_fasync(int fd, struct file *file, int on)
{
 struct usbtmc_file_data *file_data = file->private_data;

 return fasync_helper(fd, file, on, &file_data->data->fasync);
}
