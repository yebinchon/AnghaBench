
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privcmd_data {int domid; } ;
struct inode {int dummy; } ;
struct file {struct privcmd_data* private_data; } ;


 int DOMID_INVALID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct privcmd_data* kzalloc (int,int ) ;

__attribute__((used)) static int privcmd_open(struct inode *ino, struct file *file)
{
 struct privcmd_data *data = kzalloc(sizeof(*data), GFP_KERNEL);

 if (!data)
  return -ENOMEM;


 data->domid = DOMID_INVALID;

 file->private_data = data;
 return 0;
}
