
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_3__ {int current_node; int lastnode; } ;
typedef TYPE_1__ DATA ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_find_node_by_path (char*) ;
 int openprom_mutex ;

__attribute__((used)) static int openprom_open(struct inode * inode, struct file * file)
{
 DATA *data;

 data = kmalloc(sizeof(DATA), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_lock(&openprom_mutex);
 data->current_node = of_find_node_by_path("/");
 data->lastnode = data->current_node;
 file->private_data = (void *) data;
 mutex_unlock(&openprom_mutex);

 return 0;
}
