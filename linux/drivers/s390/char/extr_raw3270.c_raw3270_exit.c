
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccw_driver_unregister (int *) ;
 int class3270 ;
 int class_destroy (int ) ;
 int raw3270_ccw_driver ;

__attribute__((used)) static void
raw3270_exit(void)
{
 ccw_driver_unregister(&raw3270_ccw_driver);
 class_destroy(class3270);
}
