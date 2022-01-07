
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00debug_intf {TYPE_1__* debug; } ;
struct inode {int dummy; } ;
struct file {struct rt2x00debug_intf* private_data; } ;
struct TYPE_2__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static int rt2x00debug_file_release(struct inode *inode, struct file *file)
{
 struct rt2x00debug_intf *intf = file->private_data;

 module_put(intf->debug->owner);

 return 0;
}
