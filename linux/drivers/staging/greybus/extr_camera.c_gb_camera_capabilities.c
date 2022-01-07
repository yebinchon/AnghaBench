
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_camera {int bundle; int mutex; int connection; } ;


 int EINVAL ;
 int GB_CAMERA_TYPE_CAPABILITIES ;
 int GB_OPERATION_FLAG_SHORT_RESPONSE ;
 int gb_camera_operation_sync_flags (int ,int ,int ,int *,int ,void*,size_t*) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 int gcam_err (struct gb_camera*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_camera_capabilities(struct gb_camera *gcam,
      u8 *capabilities, size_t *size)
{
 int ret;

 ret = gb_pm_runtime_get_sync(gcam->bundle);
 if (ret)
  return ret;

 mutex_lock(&gcam->mutex);

 if (!gcam->connection) {
  ret = -EINVAL;
  goto done;
 }

 ret = gb_camera_operation_sync_flags(gcam->connection,
          GB_CAMERA_TYPE_CAPABILITIES,
          GB_OPERATION_FLAG_SHORT_RESPONSE,
          ((void*)0), 0,
          (void *)capabilities, size);
 if (ret)
  gcam_err(gcam, "failed to retrieve capabilities: %d\n", ret);

done:
 mutex_unlock(&gcam->mutex);

 gb_pm_runtime_put_autosuspend(gcam->bundle);

 return ret;
}
