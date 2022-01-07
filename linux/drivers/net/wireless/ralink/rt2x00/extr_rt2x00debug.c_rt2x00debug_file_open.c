
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00debug_intf {TYPE_1__* debug; } ;
struct inode {struct rt2x00debug_intf* i_private; } ;
struct file {struct rt2x00debug_intf* private_data; } ;
struct TYPE_2__ {int owner; } ;


 int EBUSY ;
 int try_module_get (int ) ;

__attribute__((used)) static int rt2x00debug_file_open(struct inode *inode, struct file *file)
{
 struct rt2x00debug_intf *intf = inode->i_private;

 file->private_data = inode->i_private;

 if (!try_module_get(intf->debug->owner))
  return -EBUSY;

 return 0;
}
