
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_camera {int module; } ;
struct gb_bundle {int dummy; } ;


 int gb_camera_cleanup (struct gb_camera*) ;
 int gb_camera_unregister (int *) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_camera* greybus_get_drvdata (struct gb_bundle*) ;

__attribute__((used)) static void gb_camera_disconnect(struct gb_bundle *bundle)
{
 struct gb_camera *gcam = greybus_get_drvdata(bundle);
 int ret;

 ret = gb_pm_runtime_get_sync(bundle);
 if (ret)
  gb_pm_runtime_get_noresume(bundle);

 gb_camera_cleanup(gcam);
 gb_camera_unregister(&gcam->module);
}
