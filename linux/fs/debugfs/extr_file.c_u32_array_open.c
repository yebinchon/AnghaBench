
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct array_data* i_private; } ;
struct file {char* private_data; } ;
struct array_data {int elements; int array; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int u32_format_array (char*,int,int ,int) ;

__attribute__((used)) static int u32_array_open(struct inode *inode, struct file *file)
{
 struct array_data *data = inode->i_private;
 int size, elements = data->elements;
 char *buf;






 size = elements*11;
 buf = kmalloc(size+1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 buf[size] = 0;

 file->private_data = buf;
 u32_format_array(buf, size, data->array, data->elements);

 return nonseekable_open(inode, file);
}
