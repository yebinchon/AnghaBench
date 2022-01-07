
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct gb_camera_debugfs_entry {int name; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {void* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_iname; } ;


 unsigned int ARRAY_SIZE (struct gb_camera_debugfs_entry*) ;
 struct gb_camera_debugfs_entry* gb_camera_debugfs_entries ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int gb_camera_debugfs_open(struct inode *inode, struct file *file)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(gb_camera_debugfs_entries); ++i) {
  const struct gb_camera_debugfs_entry *entry =
   &gb_camera_debugfs_entries[i];

  if (!strcmp(file->f_path.dentry->d_iname, entry->name)) {
   file->private_data = (void *)entry;
   break;
  }
 }

 return 0;
}
