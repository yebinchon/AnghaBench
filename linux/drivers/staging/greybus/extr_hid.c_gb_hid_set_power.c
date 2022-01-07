
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_hid {int bundle; int connection; } ;


 int gb_operation_sync (int ,int,int *,int ,int *,int ) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int gb_hid_set_power(struct gb_hid *ghid, int type)
{
 int ret;

 ret = gb_pm_runtime_get_sync(ghid->bundle);
 if (ret)
  return ret;

 ret = gb_operation_sync(ghid->connection, type, ((void*)0), 0, ((void*)0), 0);

 gb_pm_runtime_put_autosuspend(ghid->bundle);

 return ret;
}
