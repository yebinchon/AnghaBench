
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_camera_debugfs_buffer {int data; int length; } ;
struct TYPE_2__ {struct gb_camera_debugfs_buffer* buffers; } ;
struct gb_camera {TYPE_1__ debugfs; } ;
typedef int ssize_t ;


 size_t GB_CAMERA_DEBUGFS_BUFFER_FLUSH ;
 int gb_camera_flush (struct gb_camera*,unsigned int*) ;
 int sprintf (int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t gb_camera_debugfs_flush(struct gb_camera *gcam,
           char *buf, size_t len)
{
 struct gb_camera_debugfs_buffer *buffer =
  &gcam->debugfs.buffers[GB_CAMERA_DEBUGFS_BUFFER_FLUSH];
 unsigned int req_id;
 int ret;

 ret = gb_camera_flush(gcam, &req_id);
 if (ret < 0)
  return ret;

 buffer->length = sprintf(buffer->data, "%u", req_id);

 return len;
}
