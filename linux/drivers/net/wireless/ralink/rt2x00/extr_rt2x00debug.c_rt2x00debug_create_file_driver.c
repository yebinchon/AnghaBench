
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00debug_intf {int driver_folder; TYPE_2__* rt2x00dev; } ;
struct debugfs_blob_wrapper {char* data; int size; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {char* name; } ;


 char* DRV_VERSION ;
 int GFP_KERNEL ;
 int MAX_LINE_LENGTH ;
 int debugfs_create_blob (char const*,int,int ,struct debugfs_blob_wrapper*) ;
 char* kzalloc (int,int ) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void rt2x00debug_create_file_driver(const char *name,
        struct rt2x00debug_intf *intf,
        struct debugfs_blob_wrapper *blob)
{
 char *data;

 data = kzalloc(3 * MAX_LINE_LENGTH, GFP_KERNEL);
 if (!data)
  return;

 blob->data = data;
 data += sprintf(data, "driver:\t%s\n", intf->rt2x00dev->ops->name);
 data += sprintf(data, "version:\t%s\n", DRV_VERSION);
 blob->size = strlen(blob->data);

 debugfs_create_blob(name, 0400, intf->driver_folder, blob);
}
