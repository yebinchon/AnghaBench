
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_fw_core {int download_connection; int spi_connection; int cap_connection; int mgmt_connection; } ;
struct gb_bundle {TYPE_1__* intf; } ;
struct TYPE_2__ {int quirks; } ;


 int GB_INTERFACE_QUIRK_NO_PM ;
 int gb_cap_connection_exit (int ) ;
 int gb_connection_destroy (int ) ;
 int gb_fw_download_connection_exit (int ) ;
 int gb_fw_mgmt_connection_exit (int ) ;
 int gb_fw_spi_connection_exit (int ) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_fw_core* greybus_get_drvdata (struct gb_bundle*) ;
 int kfree (struct gb_fw_core*) ;

__attribute__((used)) static void gb_fw_core_disconnect(struct gb_bundle *bundle)
{
 struct gb_fw_core *fw_core = greybus_get_drvdata(bundle);
 int ret;


 if (!(bundle->intf->quirks & GB_INTERFACE_QUIRK_NO_PM)) {
  ret = gb_pm_runtime_get_sync(bundle);
  if (ret)
   gb_pm_runtime_get_noresume(bundle);
 }

 gb_fw_mgmt_connection_exit(fw_core->mgmt_connection);
 gb_cap_connection_exit(fw_core->cap_connection);
 gb_fw_spi_connection_exit(fw_core->spi_connection);
 gb_fw_download_connection_exit(fw_core->download_connection);

 gb_connection_destroy(fw_core->mgmt_connection);
 gb_connection_destroy(fw_core->cap_connection);
 gb_connection_destroy(fw_core->spi_connection);
 gb_connection_destroy(fw_core->download_connection);

 kfree(fw_core);
}
