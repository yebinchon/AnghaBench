
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_vibrator_device {TYPE_1__* connection; } ;
struct gb_bundle {int dummy; } ;
struct TYPE_2__ {struct gb_bundle* bundle; } ;


 int GB_VIBRATOR_TYPE_OFF ;
 int gb_operation_sync (TYPE_1__*,int ,int *,int ,int *,int ) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;

__attribute__((used)) static int turn_off(struct gb_vibrator_device *vib)
{
 struct gb_bundle *bundle = vib->connection->bundle;
 int ret;

 ret = gb_operation_sync(vib->connection, GB_VIBRATOR_TYPE_OFF,
    ((void*)0), 0, ((void*)0), 0);

 gb_pm_runtime_put_autosuspend(bundle);

 return ret;
}
