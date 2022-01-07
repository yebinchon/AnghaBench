
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_lights {int connection; } ;
struct gb_bundle {int dummy; } ;


 int gb_connection_destroy (int ) ;
 int gb_connection_disable (int ) ;
 int gb_lights_release (struct gb_lights*) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 scalar_t__ gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_lights* greybus_get_drvdata (struct gb_bundle*) ;

__attribute__((used)) static void gb_lights_disconnect(struct gb_bundle *bundle)
{
 struct gb_lights *glights = greybus_get_drvdata(bundle);

 if (gb_pm_runtime_get_sync(bundle))
  gb_pm_runtime_get_noresume(bundle);

 gb_connection_disable(glights->connection);
 gb_connection_destroy(glights->connection);

 gb_lights_release(glights);
}
