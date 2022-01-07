
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_camera_capture_request {unsigned int streams; int settings; int num_frames; scalar_t__ padding; int request_id; } ;
struct gb_camera {int mutex; int connection; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t GB_CAMERA_MAX_SETTINGS_SIZE ;
 int GB_CAMERA_TYPE_CAPTURE ;
 int GFP_KERNEL ;
 int cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (int ) ;
 int gb_operation_sync (int ,int ,struct gb_camera_capture_request*,size_t,int *,int ) ;
 int kfree (struct gb_camera_capture_request*) ;
 struct gb_camera_capture_request* kmalloc (size_t,int ) ;
 int memcpy (int ,void const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_camera_capture(struct gb_camera *gcam, u32 request_id,
        unsigned int streams, unsigned int num_frames,
        size_t settings_size, const void *settings)
{
 struct gb_camera_capture_request *req;
 size_t req_size;
 int ret;

 if (settings_size > GB_CAMERA_MAX_SETTINGS_SIZE)
  return -EINVAL;

 req_size = sizeof(*req) + settings_size;
 req = kmalloc(req_size, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 req->request_id = cpu_to_le32(request_id);
 req->streams = streams;
 req->padding = 0;
 req->num_frames = cpu_to_le16(num_frames);
 memcpy(req->settings, settings, settings_size);

 mutex_lock(&gcam->mutex);

 if (!gcam->connection) {
  ret = -EINVAL;
  goto done;
 }

 ret = gb_operation_sync(gcam->connection, GB_CAMERA_TYPE_CAPTURE,
    req, req_size, ((void*)0), 0);
done:
 mutex_unlock(&gcam->mutex);

 kfree(req);

 return ret;
}
