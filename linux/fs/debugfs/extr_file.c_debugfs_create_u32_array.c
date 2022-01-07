
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct dentry {int dummy; } ;
struct array_data {int elements; int * array; } ;


 int GFP_KERNEL ;
 int debugfs_create_file_unsafe (char const*,int ,struct dentry*,struct array_data*,int *) ;
 struct array_data* kmalloc (int,int ) ;
 int u32_array_fops ;

void debugfs_create_u32_array(const char *name, umode_t mode,
         struct dentry *parent, u32 *array, u32 elements)
{
 struct array_data *data = kmalloc(sizeof(*data), GFP_KERNEL);

 if (data == ((void*)0))
  return;

 data->array = array;
 data->elements = elements;

 debugfs_create_file_unsafe(name, mode, parent, data, &u32_array_fops);
}
