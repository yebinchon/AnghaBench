
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffers; int root; } ;
struct gb_camera {TYPE_1__ debugfs; } ;


 int debugfs_remove_recursive (int ) ;
 int vfree (int ) ;

__attribute__((used)) static void gb_camera_debugfs_cleanup(struct gb_camera *gcam)
{
 debugfs_remove_recursive(gcam->debugfs.root);

 vfree(gcam->debugfs.buffers);
}
