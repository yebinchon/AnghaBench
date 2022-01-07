
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_mmal_instance {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {struct vchiq_mmal_instance* instance; } ;


 int MAX_BCM2835_CAMERAS ;
 int bcm2835_cleanup_instance (TYPE_1__*) ;
 TYPE_1__** gdev ;
 int vchiq_mmal_finalise (struct vchiq_mmal_instance*) ;

__attribute__((used)) static int bcm2835_mmal_remove(struct platform_device *pdev)
{
 int camera;
 struct vchiq_mmal_instance *instance = gdev[0]->instance;

 for (camera = 0; camera < MAX_BCM2835_CAMERAS; camera++) {
  bcm2835_cleanup_instance(gdev[camera]);
  gdev[camera] = ((void*)0);
 }
 vchiq_mmal_finalise(instance);

 return 0;
}
