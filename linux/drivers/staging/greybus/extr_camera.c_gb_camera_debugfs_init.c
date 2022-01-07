
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gb_connection {TYPE_1__* intf; } ;
struct gb_camera_debugfs_entry {int mask; int name; } ;
struct TYPE_7__ {int root; TYPE_4__* buffers; } ;
struct gb_camera {TYPE_3__ debugfs; TYPE_2__* bundle; struct gb_connection* connection; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int interface_id; } ;


 unsigned int ARRAY_SIZE (struct gb_camera_debugfs_entry*) ;
 int ENOMEM ;
 int GB_CAMERA_DEBUGFS_BUFFER_MAX ;
 int array_size (int ,int) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (int ,int ,int ,struct gb_camera*,int *) ;
 struct gb_camera_debugfs_entry* gb_camera_debugfs_entries ;
 int gb_camera_debugfs_ops ;
 int gb_debugfs_get () ;
 int snprintf (char*,int,char*,int,int) ;
 TYPE_4__* vmalloc (int ) ;

__attribute__((used)) static int gb_camera_debugfs_init(struct gb_camera *gcam)
{
 struct gb_connection *connection = gcam->connection;
 char dirname[27];
 unsigned int i;




 snprintf(dirname, 27, "camera-%u.%u", connection->intf->interface_id,
   gcam->bundle->id);

 gcam->debugfs.root = debugfs_create_dir(dirname, gb_debugfs_get());

 gcam->debugfs.buffers =
  vmalloc(array_size(GB_CAMERA_DEBUGFS_BUFFER_MAX,
       sizeof(*gcam->debugfs.buffers)));
 if (!gcam->debugfs.buffers)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(gb_camera_debugfs_entries); ++i) {
  const struct gb_camera_debugfs_entry *entry =
   &gb_camera_debugfs_entries[i];

  gcam->debugfs.buffers[i].length = 0;

  debugfs_create_file(entry->name, entry->mask,
        gcam->debugfs.root, gcam,
        &gb_camera_debugfs_ops);
 }

 return 0;
}
