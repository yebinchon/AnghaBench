
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_camera_flush_response {int request_id; } ;
struct gb_camera {int mutex; int connection; } ;
typedef int resp ;


 int EINVAL ;
 int GB_CAMERA_TYPE_FLUSH ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_camera_flush_response*,int) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_camera_flush(struct gb_camera *gcam, u32 *request_id)
{
 struct gb_camera_flush_response resp;
 int ret;

 mutex_lock(&gcam->mutex);

 if (!gcam->connection) {
  ret = -EINVAL;
  goto done;
 }

 ret = gb_operation_sync(gcam->connection, GB_CAMERA_TYPE_FLUSH, ((void*)0), 0,
    &resp, sizeof(resp));

 if (ret < 0)
  goto done;

 if (request_id)
  *request_id = le32_to_cpu(resp.request_id);

done:
 mutex_unlock(&gcam->mutex);

 return ret;
}
