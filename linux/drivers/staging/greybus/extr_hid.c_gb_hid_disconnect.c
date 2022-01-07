
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_hid {int connection; int hid; } ;
struct gb_bundle {int dummy; } ;


 int gb_connection_destroy (int ) ;
 int gb_connection_disable (int ) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 scalar_t__ gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_hid* greybus_get_drvdata (struct gb_bundle*) ;
 int hid_destroy_device (int ) ;
 int kfree (struct gb_hid*) ;

__attribute__((used)) static void gb_hid_disconnect(struct gb_bundle *bundle)
{
 struct gb_hid *ghid = greybus_get_drvdata(bundle);

 if (gb_pm_runtime_get_sync(bundle))
  gb_pm_runtime_get_noresume(bundle);

 hid_destroy_device(ghid->hid);
 gb_connection_disable(ghid->connection);
 gb_connection_destroy(ghid->connection);
 kfree(ghid);
}
